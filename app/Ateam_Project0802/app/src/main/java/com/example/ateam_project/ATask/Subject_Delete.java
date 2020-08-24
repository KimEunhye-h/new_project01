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

public class Subject_Delete extends AsyncTask<Void,Void,String> {
    String name,subject;
    String state = "";
    public Subject_Delete(String name,String subject){
        this.name=name;
        this.subject=subject;
    }
    @Override
    protected String doInBackground(Void... voids) {
        HttpClient httpClient = AndroidHttpClient.newInstance("Android");
        try {
            // MultipartEntityBuild 생성
            MultipartEntityBuilder builder = MultipartEntityBuilder.create();
            builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);

            // 문자열 및 데이터 추가
            builder.addTextBody("name", name, ContentType.create("Multipart/related", "UTF-8"));
            builder.addTextBody("subject", subject, ContentType.create("Multipart/related", "UTF-8"));

            String postURL = subJectIpConfig + "/app/SubjectDelete";
            // 전송
            InputStream inputStream = null;

            HttpPost httpPost = new HttpPost(postURL);
            httpPost.setEntity(builder.build());
            HttpResponse httpResponse = httpClient.execute(httpPost);
            HttpEntity httpEntity = httpResponse.getEntity();
            inputStream = httpEntity.getContent();

            // 응답
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            StringBuilder stringBuilder = new StringBuilder();
            String line = null;
            while ((line = bufferedReader.readLine()) != null){
                stringBuilder.append(line + "\n");
            }
            state = stringBuilder.toString();
            inputStream.close();

            // 응답결과
            String result = stringBuilder.toString();
            Log.d("response", result);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ((AndroidHttpClient) httpClient).close();
        }
        return state;
    }

    @Override
    protected void onPostExecute(String s) {
        super.onPostExecute(s);


    }
}
