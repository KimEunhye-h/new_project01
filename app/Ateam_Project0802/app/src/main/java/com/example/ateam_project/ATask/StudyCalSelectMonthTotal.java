package com.example.ateam_project.ATask;

import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import android.util.JsonReader;
import android.util.Log;

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
import java.nio.charset.Charset;

import static com.example.ateam_project.Common.CommonMethod.subJectIpConfig;

public class StudyCalSelectMonthTotal extends AsyncTask<Void, Void, String> {
    private static final String TAG = "main";
    String name, today;

    public StudyCalSelectMonthTotal(String name, String today) {
        this.name=name;
        this.today=today;
    }

    String total = "";

    HttpClient httpClient;
    HttpPost httpPost;
    HttpResponse httpResponse;
    HttpEntity httpEntity;

    @Override
    protected void onPreExecute() {
        super.onPreExecute();
        //  프로그래스바 보이게
    }

    @Override
    protected String doInBackground(Void... voids) {
        try {
            // MultipartEntityBuild 생성
            MultipartEntityBuilder builder = MultipartEntityBuilder.create();
            builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);
            builder.setCharset(Charset.forName("UTF-8"));
            String postURL = subJectIpConfig + "/app/studyCalSelectMonthTotal";

            // 문자열 및 데이터 추가
            builder.addTextBody("name", name, ContentType.create("Multipart/related", "UTF-8"));
            builder.addTextBody("today", today, ContentType.create("Multipart/related", "UTF-8"));
            // 전송
            InputStream inputStream = null;
            httpClient = AndroidHttpClient.newInstance("Android");
            httpPost = new HttpPost(postURL);
            httpPost.setEntity(builder.build());
            httpResponse = httpClient.execute(httpPost);
            httpEntity = httpResponse.getEntity();
            inputStream = httpEntity.getContent();

            // 응답
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            StringBuilder stringBuilder = new StringBuilder();
            String line = null;
            while ((line = bufferedReader.readLine()) != null){
                stringBuilder.append(line + "\n");
            }
            total = stringBuilder.toString();

            inputStream.close();


        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (httpEntity != null) {
                httpEntity = null;
            }
            if (httpResponse != null) {
                httpResponse = null;
            }
            if (httpPost != null) {
                httpPost = null;
            }
            if (httpClient != null) {
                httpClient = null;
            }
        }
        return total;
    }

    @Override
    protected void onPostExecute(String result) {
        super.onPostExecute(result);
        Log.d(TAG, "onPostExecute: " + result) ;
    }

    public String readMessage(InputStream inputStream) throws IOException {
        JsonReader reader = new JsonReader(new InputStreamReader(inputStream, "UTF-8"));
        reader.beginObject();
        while (reader.hasNext()) {
            String readStr = reader.nextName();
            if (readStr.equals("total")) {
                total = reader.nextString();
            }
        }
        reader.endObject();
        Log.d("main:studyMonthTotal", name);
        return total;
    }

    }

