package com.example.ateam_project.ATask;

import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import android.util.JsonReader;
import android.util.Log;

import com.example.ateam_project.DTO.WeekTotalDTO;

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

public class StudyCalSelectWeekSubTotal extends AsyncTask<Void, Void, ArrayList<WeekTotalDTO>> {
    private static final String TAG = "main:WeekTotal2";
    String name, today;

    public StudyCalSelectWeekSubTotal(String name, String today) {
        this.name=name;
        this.today=today;
    }

    ArrayList<WeekTotalDTO> weekList;

    HttpClient httpClient;
    HttpPost httpPost;
    HttpResponse httpResponse;
    HttpEntity httpEntity;

    @Override
    protected void onPreExecute() {
        super.onPreExecute();

        weekList = new ArrayList<>();
    }

    @Override
    protected ArrayList<WeekTotalDTO> doInBackground(Void... voids) {
        try {
            // MultipartEntityBuild 생성
            MultipartEntityBuilder builder = MultipartEntityBuilder.create();
            builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);
            builder.setCharset(Charset.forName("UTF-8"));
            String postURL = subJectIpConfig + "/app/studyCalSelectWeekTotal2";

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
        return weekList;
    }

    @Override
    protected void onPostExecute(ArrayList<WeekTotalDTO> weList) {
        super.onPostExecute(weList);
        Log.d(TAG, "onPostExecute: " + weList.size()) ;
    }

    public void readJsonStream(InputStream inputStream) throws IOException {
        JsonReader reader = new JsonReader(new InputStreamReader(inputStream, "UTF-8"));
        try {
            reader.beginArray();
            while (reader.hasNext()) {
                weekList.add(readMessage(reader));
            }
            reader.endArray();
        } finally {
            reader.close();
        }
    }

    public WeekTotalDTO readMessage(JsonReader reader) throws IOException {
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
        Log.d("main:StudyWeektotal2", subject + "," + total);

        return new WeekTotalDTO(subject, total);
    }

}

