package com.example.ateam_project.ATask;

import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import android.util.JsonReader;
import android.util.Log;

import com.example.ateam_project.DTO.TimeDTO;

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

import static com.example.ateam_project.Common.CommonMethod.subJectIpConfig;
import static com.example.ateam_project.Sub_StopwarchMain_Activity.timeDTO;

public class Time_sel_ATask extends AsyncTask<Void,Void,Void> {
    String name,subJect;
    //ArrayList<TimeDTO> itemlist;


    public Time_sel_ATask (String name,String subJect){

        this.name=name;
        this.subJect=subJect;
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
        //itemlist.clear();


        try {
            // MultipartEntityBuild 생성
            MultipartEntityBuilder builder = MultipartEntityBuilder.create();
            builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);
            builder.setCharset(Charset.forName("UTF-8"));
            String postURL = subJectIpConfig + "/app/tmSelect";
            builder.addTextBody("name", name, ContentType.create("Multipart/related", "UTF-8"));
            builder.addTextBody("subject", subJect, ContentType.create("Multipart/related", "UTF-8"));

            // 전송
            InputStream inputStream = null;
            httpClient = AndroidHttpClient.newInstance("Android");
            httpPost = new HttpPost(postURL);
            httpPost.setEntity(builder.build());
            httpResponse = httpClient.execute(httpPost);
            httpEntity = httpResponse.getEntity();
            inputStream = httpEntity.getContent();

            timeDTO=readMessage(inputStream);

            //readJsonStream(inputStream);


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

//    public void readJsonStream(InputStream inputStream) throws IOException {
//        JsonReader reader = new JsonReader(new InputStreamReader(inputStream, "UTF-8"));
//        try {
//            reader.beginArray();
//            while (reader.hasNext()) {
//                itemlist.add(readMessage(reader));
//            }
//            reader.endArray();
//        } finally {
//            reader.close();
//        }
//    }

    //스프링 DB에서 가져온값을 DTO에 넣기
    public TimeDTO readMessage(InputStream inputStream) throws IOException {
        JsonReader reader = new JsonReader(new InputStreamReader(inputStream, "UTF-8"));

        String subject = "", subjectTime = "", today = "";

        reader.beginObject();
        while (reader.hasNext()) {
            String readStr = reader.nextName();
            if (readStr.equals("subject")) {
                subject = reader.nextString();
            } else if (readStr.equals("subjectTime")) {
                subjectTime = reader.nextString();
            } else if (readStr.equals("today")) {
                today = reader.nextString();
            } else{
                reader.skipValue();
            }
        }
        reader.endObject();
        Log.d("main:loginselect : ", subject + "," + subjectTime + "," + today );
        return new TimeDTO(subject, subjectTime, today);

    }
}
