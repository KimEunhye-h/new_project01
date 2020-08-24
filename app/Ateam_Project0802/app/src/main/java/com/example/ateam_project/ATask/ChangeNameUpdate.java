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


public class ChangeNameUpdate extends AsyncTask<Void, Void, String> {

    String name, oldName;
    String state="";
    private static final String TAG = "ChangeNameUpdate";
    public ChangeNameUpdate(String name, String oldName){
        this.name = name;
        this.oldName = oldName;
    }


    @Override
    protected void onPreExecute() {
        super.onPreExecute();
        Log.d("Sub1Update10", "name : " + name);
        Log.d("Sub1Update11", "oldname : " + oldName);
    }
    HttpClient httpClient;
    HttpPost httpPost;
    HttpResponse httpResponse;
    HttpEntity httpEntity;

    @Override
    protected String doInBackground(Void... voids) {


        try {
            // MultipartEntityBuild 생성
            String postURL = subJectIpConfig + "/app/changeNameUpdate";
            MultipartEntityBuilder builder = MultipartEntityBuilder.create();
            builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);
            builder.setCharset(Charset.forName("UTF-8"));

            Log.d("Sub1Update12", name);
            Log.d("Sub1Update13", oldName);

            Log.d("Sub1Update:postURL", postURL);

            // 문자열 및 데이터 추가
            builder.addTextBody("name", name, ContentType.create("Multipart/related", "UTF-8"));
            builder.addTextBody("oldName", oldName, ContentType.create("Multipart/related", "UTF-8"));




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
            Log.d(TAG, "뭐야: "+state);
            inputStream.close();

            // 응답결과
               /* String result = stringBuilder.toString();
                Log.d("response", result);*/



        } catch (Exception e) {
            e.printStackTrace();
        }
        Log.d(TAG, "뭐야: "+state);
        return state;
    }

    @Override
    protected void onPostExecute(String state) {
        super.onPostExecute(state);
        //dialog.dismiss();

    }
    public String readMessage(InputStream inputStream) throws IOException {
        JsonReader reader = new JsonReader(new InputStreamReader(inputStream, "UTF-8"));
        reader.beginObject();
        while (reader.hasNext()) {
            String readStr = reader.nextName();
            if (readStr.equals("state")) {
                state = reader.nextString();
            }
        }
        reader.endObject();

        return state;
    }

}
