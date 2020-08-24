package com.example.ateam_project.ATask;

import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import android.util.JsonReader;
import android.util.Log;

import com.example.ateam_project.Adapter.Admin_Member_List_Adapter;
import com.example.ateam_project.DTO.Admin_Member_ListDTO;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntityBuilder;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

import static com.example.ateam_project.Common.CommonMethod.subJectIpConfig;

public class Admin_Member_List_Select extends AsyncTask<Void,Void,Void> {
    //생성자
    ArrayList<Admin_Member_ListDTO> itemlist;
    Admin_Member_List_Adapter adapter;

    public Admin_Member_List_Select(ArrayList<Admin_Member_ListDTO> itemlist, Admin_Member_List_Adapter adapter){
        this.itemlist=itemlist;
        this.adapter=adapter;
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
        String postURL = subJectIpConfig + "/app/AdminMemberListSelect";  //★스프링파일명★

        try {
            // MultipartEntityBuild 생성
            MultipartEntityBuilder builder = MultipartEntityBuilder.create();
            builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);

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

        adapter.notifyDataSetChanged();
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
    public Admin_Member_ListDTO readMessage(JsonReader reader) throws IOException {
        String name = "", email = "",join_date= "";


        reader.beginObject();
        while (reader.hasNext()) {
            String readStr = reader.nextName();
            if (readStr.equals("name")) {
                name = reader.nextString();
            } else if (readStr.equals("email")) {
                email = reader.nextString();
            } else if (readStr.equals("join_date")) {
                join_date = reader.nextString();
            }else {
                reader.skipValue();
            }
        }
        reader.endObject();
        Log.d("listselect:myitem", name + "," + email + "," + join_date );
        return new Admin_Member_ListDTO(name, email, join_date);
    }
}
