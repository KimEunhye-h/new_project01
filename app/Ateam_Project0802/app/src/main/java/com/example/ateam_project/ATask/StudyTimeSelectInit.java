package com.example.ateam_project.ATask;

import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import android.util.JsonReader;
import android.util.Log;

import com.example.ateam_project.DTO.StudyCalDTO;

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

public class StudyTimeSelectInit extends AsyncTask<Void, Void, String> {
    String type;
    ArrayList<StudyCalDTO> list;
    String nameday;

    public StudyTimeSelectInit(String type, ArrayList<StudyCalDTO> list, String nameday) {
        this.type = type;
        this.list = list;
        this.nameday = nameday;
    }

    HttpClient httpClient;
    HttpPost httpPost;
    HttpResponse httpResponse;
    HttpEntity httpEntity;
    @Override
    protected void onPreExecute() {
        super.onPreExecute();

        list.clear();
        //  프로그래스바 보이게
    }

    @Override
    protected String doInBackground(Void... voids) {
        try {
            // MultipartEntityBuild 생성
            MultipartEntityBuilder builder = MultipartEntityBuilder.create();
            builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);
            builder.setCharset(Charset.forName("UTF-8"));
            String postURL = subJectIpConfig + "/app/studyCalSelectMultiInit";
            //데이터 추가
            builder.addTextBody("type", type, ContentType.create("Multipart/related", "UTF-8"));
            builder.addTextBody("nameday", nameday, ContentType.create("Multipart/related", "UTF-8"));
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
        return "LoginDTO select complete!!!";
    }

    @Override
    protected void onPostExecute(String result) {
        super.onPostExecute(result);        // 프로그래스바 안보이게

        Log.d("mainStudyTimeSelect", "onPostExecute: " + list.size());
    }


    public void readJsonStream(InputStream inputStream) throws IOException {
        JsonReader reader = new JsonReader(new InputStreamReader(inputStream, "UTF-8"));
        try {
            reader.beginArray();
            while (reader.hasNext()) {
                list.add(readMessage(reader));
            }
            reader.endArray();
        } finally {
            reader.close();
        }
    }

    public StudyCalDTO readMessage(JsonReader reader) throws IOException {
        String subject = "", time = "", name = "", today = "";

        reader.beginObject();
        while (reader.hasNext()) {
            String readStr = reader.nextName();
            if (readStr.equals("subject")) {
                subject = reader.nextString();
            } else if (readStr.equals("time")) {
                time = reader.nextString();
            } else if (readStr.equals("name")) {
                name = reader.nextString();
            } else if (readStr.equals("today")) {
                today = reader.nextString();
            }
        }
        reader.endObject();
        Log.d("main:Studytimeselect", subject + "," + time + "," + name  + "," + today);

        return new StudyCalDTO(subject, time, name, today);
    }

}
