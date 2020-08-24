package com.example.ateam_project.ATask;

import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import android.util.JsonReader;
import android.util.Log;

import com.example.ateam_project.DTO.MonthTotalDTO;

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

public class StudyCalSelectMonthSubTotal extends AsyncTask<Void, Void, ArrayList<MonthTotalDTO>> {
    private static final String TAG = "main:MonthTotal2";
    String name, today;

    public StudyCalSelectMonthSubTotal(String name, String today) {
        this.name=name;
        this.today=today;
    }

    ArrayList<MonthTotalDTO> totalList;

    HttpClient httpClient;
    HttpPost httpPost;
    HttpResponse httpResponse;
    HttpEntity httpEntity;

    @Override
    protected void onPreExecute() {
        super.onPreExecute();

        totalList = new ArrayList<>();
    }

    @Override
    protected ArrayList<MonthTotalDTO> doInBackground(Void... voids) {
        try {
            // MultipartEntityBuild 생성
            MultipartEntityBuilder builder = MultipartEntityBuilder.create();
            builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);
            builder.setCharset(Charset.forName("UTF-8"));
            String postURL = subJectIpConfig + "/app/studyCalSelectMonthTotal2";

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
            readJsonStream(inputStream);

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
        return totalList;
    }

    @Override
    protected void onPostExecute(ArrayList<MonthTotalDTO> totList) {
        super.onPostExecute(totList);
        Log.d(TAG, "onPostExecute: " + totList.size()) ;
    }

    public void readJsonStream(InputStream inputStream) throws IOException {
        JsonReader reader = new JsonReader(new InputStreamReader(inputStream, "UTF-8"));
        try {
            reader.beginArray();
            while (reader.hasNext()) {
                totalList.add(readMessage(reader));
            }
            reader.endArray();
        } finally {
            reader.close();
        }
    }

    public MonthTotalDTO readMessage(JsonReader reader) throws IOException {
        String subject = "", total = "";

        reader.beginObject();
        while (reader.hasNext()) {
            String readStr = reader.nextName();
            if (readStr.equals("subject")) {
                subject = reader.nextString();
            } else if (readStr.equals("total")) {
                total = reader.nextString();
            }
        }
        reader.endObject();
        Log.d("main:Studymonthtotal2", subject + "," + total);

        return new MonthTotalDTO(subject, total);
    }

}

