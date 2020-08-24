package com.example.ateam_project.ATask;

import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import android.util.JsonReader;
import android.util.Log;

import com.example.ateam_project.DTO.Dday_ItemDTO;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntityBuilder;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

import static com.example.ateam_project.Common.CommonMethod.subJectIpConfig;

public class Dday_ListOnly extends AsyncTask<Void,Void,Void> {
    //생성자
    ArrayList<Dday_ItemDTO> itemlist;
    String name;
    public Dday_ListOnly(ArrayList<Dday_ItemDTO> itemlist,String name){

        this.itemlist=itemlist;
        this.name=name;
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
        ////////////////////////////////////////////////////ItemSelect
        itemlist.clear();
        String postURL = subJectIpConfig + "/app/ItemSelectMulti";

        try {
            // MultipartEntityBuild 생성
            MultipartEntityBuilder builder = MultipartEntityBuilder.create();
            builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);

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

            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            StringBuilder stringBuilder = new StringBuilder();
            String line = null;
            while ((line = bufferedReader.readLine()) != null){
                stringBuilder.append(line + "\n");
            }
            String jsonStr = stringBuilder.toString();

            inputStream.close();

        } catch (Exception e) {
            Log.d("list", e.getMessage());
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


        Log.d("list", "List Select Complete!!!");
    }

    public void readJsonStream(InputStream inputStream) throws IOException {
        JsonReader reader = new JsonReader(new InputStreamReader(inputStream, "UTF-8"));
        try {
            reader.beginArray();
            while (reader.hasNext()) {
                itemlist.add(readMessage(reader));
            }
            reader.endArray();
        } finally {
            reader.close();
        }
    }
    //스프링 DB에서 가져온값을 DTO에 넣기
    public Dday_ItemDTO readMessage(JsonReader reader) throws IOException {
        String title = "", pickerdate = "", d_day = "", diff_day = "",name="";


        reader.beginObject();
        while (reader.hasNext()) {
            String readStr = reader.nextName();
            if (readStr.equals("title")) {
                title = reader.nextString().trim();
            } else if (readStr.equals("pickerdate")) {
                pickerdate = reader.nextString();
            } else if (readStr.equals("d_day")) {
                d_day = reader.nextString();
            } else if (readStr.equals("diff_day")) {
                diff_day = reader.nextString();
            } else if (readStr.equals("name")) {
                name = reader.nextString().trim();
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        Log.d("listselect:myitem", title + "," + pickerdate + "," + d_day );
        return new Dday_ItemDTO(name,title, pickerdate, d_day, diff_day);
    }


}
