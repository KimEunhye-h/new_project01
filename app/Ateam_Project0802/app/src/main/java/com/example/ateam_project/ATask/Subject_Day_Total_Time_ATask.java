package com.example.ateam_project.ATask;

import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import android.util.JsonReader;
import android.util.Log;

import com.example.ateam_project.DTO.Subject_Day_Time_TotalDTO;

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
import static com.example.ateam_project.MainActivity.DTTotalDTO;
public class Subject_Day_Total_Time_ATask extends AsyncTask<Void, Void, Subject_Day_Time_TotalDTO> {
    String name;
    public Subject_Day_Total_Time_ATask(String name){
        this.name=name;
    }

    HttpClient httpClient;
    HttpPost httpPost;
    HttpResponse httpResponse;
    HttpEntity httpEntity;

    @Override
    protected Subject_Day_Time_TotalDTO doInBackground(Void... voids) {

        try {
            // MultipartEntityBuild 생성
            MultipartEntityBuilder builder = MultipartEntityBuilder.create();
            builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);
            builder.setCharset(Charset.forName("UTF-8"));
            String postURL = subJectIpConfig + "/app/SubjectDayTotal";
            builder.addTextBody("name", name, ContentType.create("Multipart/related", "UTF-8"));


            // 전송
            InputStream inputStream = null;
            httpClient = AndroidHttpClient.newInstance("Android");
            httpPost = new HttpPost(postURL);
            httpPost.setEntity(builder.build());
            httpResponse = httpClient.execute(httpPost);
            httpEntity = httpResponse.getEntity();
            inputStream = httpEntity.getContent();

            DTTotalDTO=readMessage(inputStream);

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

        return DTTotalDTO;
    }

    //스프링 DB에서 가져온값을 DTO에 넣기
    public Subject_Day_Time_TotalDTO readMessage(InputStream inputStream) throws IOException {
        JsonReader reader = new JsonReader(new InputStreamReader(inputStream, "UTF-8"));

        String name = "", time = "";

        reader.beginObject();
        while (reader.hasNext()) {
            String readStr = reader.nextName();
            if (readStr.equals("name")) {
                name = reader.nextString();
            } else if (readStr.equals("time")) {
                time = reader.nextString();
            } else{
                reader.skipValue();
            }
        }
        reader.endObject();
        Log.d("main:totaltime : ", name + "," + time + "," + name );
        return new Subject_Day_Time_TotalDTO(name,time);

    }
}
