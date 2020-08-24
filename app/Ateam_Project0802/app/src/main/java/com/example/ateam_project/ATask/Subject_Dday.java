package com.example.ateam_project.ATask;

import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import android.util.JsonReader;
import android.util.Log;

import com.example.ateam_project.DTO.Dday_ItemDTO;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntityBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import static com.example.ateam_project.Common.CommonMethod.subJectIpConfig;
public class Subject_Dday extends AsyncTask<Void, Void, Void> {
    public Subject_Dday(){}
    HttpClient httpClient;
    HttpPost httpPost;
    HttpResponse httpResponse;
    HttpEntity httpEntity;
    @Override
    protected Void doInBackground(Void... voids) {

        try {
            // MultipartEntityBuild 생성
            MultipartEntityBuilder builder = MultipartEntityBuilder.create();
            builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);


            String postURL = subJectIpConfig + "/app/Subject_Dday";
            // 전송
            InputStream inputStream = null;
            httpClient = AndroidHttpClient.newInstance("Android");
            httpPost = new HttpPost(postURL);
            httpPost.setEntity(builder.build());
            httpResponse = httpClient.execute(httpPost);
            httpEntity = httpResponse.getEntity();
            inputStream = httpEntity.getContent();

            // 하나의 오브젝트 가져올때
            //Dday_DTO = readMessage(inputStream);

            inputStream.close();

        } catch (Exception e) {
            Log.d("main:Subject_Dday", e.getMessage());
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

        return null;
    }

    @Override
    protected void onPostExecute(Void aVoid) {

    }

    public Dday_ItemDTO readMessage(InputStream inputStream) throws IOException {
        JsonReader reader = new JsonReader(new InputStreamReader(inputStream, "UTF-8"));

        String title = "", pickerdate = "", d_day = "", diff_day = "";

        reader.beginObject();
        while (reader.hasNext()) {
            String readStr = reader.nextName();
            if (readStr.equals("title")) {
                title = reader.nextString();
            } else if (readStr.equals("pickerdate")) {
                pickerdate = reader.nextString();
            } else if (readStr.equals("d_day")) {
                d_day = reader.nextString();
            } else if (readStr.equals("diff_day")) {
                diff_day = reader.nextString();
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        Log.d("main:loginselect : ", title + "," + pickerdate + "," + d_day + "," + diff_day);
        return new Dday_ItemDTO(title, pickerdate, d_day, diff_day);

    }
}
