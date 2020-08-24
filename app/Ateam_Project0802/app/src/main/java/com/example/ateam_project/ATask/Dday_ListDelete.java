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

public class Dday_ListDelete extends AsyncTask<Void,Void,String> {
    String title;
    String state = "";

    public Dday_ListDelete(String title){
        this.title=title;
    }
    @Override
    protected String doInBackground(Void... voids) {
        HttpClient httpClient = AndroidHttpClient.newInstance("Android");
        try {
            // MultipartEntityBuild 생성
            MultipartEntityBuilder builder = MultipartEntityBuilder.create();
            builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);

            // 문자열 및 데이터 추가
            builder.addTextBody("title", title, ContentType.create("Multipart/related", "UTF-8"));

            String postURL = subJectIpConfig + "/app/ItemDeleteMulti";
            // 전송
            InputStream inputStream = null;
           // HttpClient httpClient = AndroidHttpClient.newInstance("Android");
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
            state = stringBuilder.toString().trim();
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
