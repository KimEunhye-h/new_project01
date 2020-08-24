package com.example.ateam_project.ATask;

import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import android.util.JsonReader;
import android.util.Log;

import com.example.ateam_project.Adapter.FriendListAdapter;
import com.example.ateam_project.DTO.FriendListDTO;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntityBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;

import static com.example.ateam_project.Common.CommonMethod.subJectIpConfig;

public class Friend_List_ATask extends AsyncTask<Void,Void,Void> {
    ArrayList<FriendListDTO> subjectList;
    FriendListAdapter adapter;
    String name;

    public Friend_List_ATask(ArrayList<FriendListDTO> subjectList, FriendListAdapter adapter, String name){
        this.subjectList=subjectList;
        this.adapter=adapter;
        this.name = name;
    }

    HttpClient httpClient;
    HttpPost httpPost;
    HttpResponse httpResponse;
    HttpEntity httpEntity;

    @Override
    protected void onPreExecute() {
        super.onPreExecute();
    }

    @Override
    protected Void doInBackground(Void... voids) {

        subjectList.clear();
        String postURL = subJectIpConfig + "/app/FriendList";

        try {
            // MultipartEntityBuild 생성
            MultipartEntityBuilder builder = MultipartEntityBuilder.create();
            builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);
            builder.setCharset(Charset.forName("UTF-8"));

            // 문자열 및 데이터 추가
            builder.addTextBody("name", name, ContentType.create("Multipart/related", "UTF-8"));

            // 전송
            InputStream inputStream = null;
            httpClient = AndroidHttpClient.newInstance("Android");
            httpPost = new HttpPost(postURL);
            httpPost.setEntity(builder.build());
            httpResponse = httpClient.execute(httpPost);
            httpEntity = httpResponse.getEntity();
            inputStream = httpEntity.getContent();

            readJsonStream(inputStream);

            /*BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            StringBuilder stringBuilder = new StringBuilder();
            String line = null;
            while ((line = bufferedReader.readLine()) != null){
                stringBuilder.append(line + "\n");
            }
            String jsonStr = stringBuilder.toString();*/

            inputStream.close();

        } catch (Exception e) {
            Log.d("Sub1", e.getMessage());
            e.printStackTrace();
        }finally {
            httpPost.abort();
            if(httpEntity != null){
                httpEntity = null;
            }
            if(httpResponse != null){
                httpResponse = null;
            }
            if(httpPost != null){
                httpPost = null;
            }
            if(httpClient != null){
                httpClient = null;

            }

        }

        return null;
    }

    @Override
    protected void onPostExecute(Void aVoid) {
        super.onPostExecute(aVoid);


        Log.d("SubjectList", "List Select Complete!!!");

        adapter.notifyDataSetChanged();
    }

    public void readJsonStream(InputStream inputStream) throws IOException {
        JsonReader reader = new JsonReader(new InputStreamReader(inputStream, "UTF-8"));
        try {
            reader.beginArray();
            while (reader.hasNext()) {
                subjectList.add(readMessage(reader));
            }
            reader.endArray();
        } finally {
            reader.close();
        }
    }
    //스프링 DB에서 가져온값을 DTO에 넣기
    public FriendListDTO readMessage(JsonReader reader) throws IOException {
        String name = "", subject = "", time = "", today = "";


        reader.beginObject();
        while (reader.hasNext()) {
            String readStr = reader.nextName();
            if (readStr.equals("name")) {
                name = reader.nextString();
            } else if (readStr.equals("subject")) {
                subject = reader.nextString();
            } else if (readStr.equals("time")) {
                time = reader.nextString();
            } else if (readStr.equals("today")) {
                today = reader.nextString();
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        Log.d("listselect:myitem", name + "," + subject + ","+time + ","+today  );
        return new FriendListDTO(name, time);
    }


}
