package com.example.ateam_project.ATask;

import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import android.util.Log;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntityBuilder;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

import static com.example.ateam_project.Common.CommonMethod.subJectIpConfig;

public class Subject_Add_ATask extends AsyncTask<Void,Void,String> {
    String name,subject,subjectTime,today;
    String state = "";
    public Subject_Add_ATask(String name,String subject, String subjectTime, String today) {
        this.name=name;
        this.subject = subject;
        this.subjectTime = subjectTime;
        this.today = today;
    }
    HttpClient httpClient;
    HttpPost httpPost;
    HttpResponse httpResponse;
    HttpEntity httpEntity;
    @Override
    protected String doInBackground(Void... voids) {
        try {
            // MultipartEntityBuild 생성
            MultipartEntityBuilder builder = MultipartEntityBuilder.create();
            builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);

            // 문자열 및 데이터 추가
            builder.addTextBody("name", name, ContentType.create("Multipart/related", "UTF-8"));
            builder.addTextBody("subject", subject, ContentType.create("Multipart/related", "UTF-8"));
            builder.addTextBody("subjectTime", subjectTime, ContentType.create("Multipart/related", "UTF-8"));
            builder.addTextBody("today", today, ContentType.create("Multipart/related", "UTF-8"));

            String postURL = subJectIpConfig + "/app/SubjectAdd";
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
            state = stringBuilder.toString();
            // 하나의 오브젝트 가져올때
            //loginDTO = readMessage(inputStream);

            inputStream.close();

        } catch (Exception e) {
            Log.d("main:loginselect", e.getMessage());
            e.printStackTrace();
        }finally {
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



        return state;
    }

//    public MemberDTO readMessage(InputStream inputStream) throws IOException {
//        JsonReader reader = new JsonReader(new InputStreamReader(inputStream, "UTF-8"));
//
//        String id = "", name = "", phonenumber = "", address = "";
//
//        reader.beginObject();
//        while (reader.hasNext()) {
//            String readStr = reader.nextName();
//            if (readStr.equals("id")) {
//                id = reader.nextString();
//            } else if (readStr.equals("name")) {
//                name = reader.nextString();
//            } else if (readStr.equals("phonenumber")) {
//                phonenumber = reader.nextString();
//            } else if (readStr.equals("address")) {
//                address = reader.nextString();
//            }else {
//                reader.skipValue();
//            }
//        }
//        reader.endObject();
//        Log.d("main:loginselect : ", id + "," + name + "," + phonenumber + "," + address);
//        return new MemberDTO(id, name, phonenumber, address);
//
//    }
}
