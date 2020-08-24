package com.example.ateam_project.ATask;

import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import android.util.JsonReader;
import android.util.Log;

import com.example.ateam_project.DTO.LoginSignupDTO;
;

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

import static com.example.ateam_project.Common.CommonMethod.subJectIpConfig;
import static com.example.ateam_project.LoginActivity.loginDTO;

public class LoginSelect_ATask extends AsyncTask<Void, Void, Void> {

    String email, pw;

    public LoginSelect_ATask(String email, String pw) {
        this.email = email;
        this.pw = pw;
    }

    HttpClient httpClient;
    HttpPost httpPost;
    HttpResponse httpResponse;
    HttpEntity httpEntity;
    private static final String TAG = "뭐야";
    /*@Override  // 없어도 됨
    protected void onPreExecute() {

    }*/

    @Override
    protected Void doInBackground(Void... voids) {

        try {
            // MultipartEntityBuild 생성
            MultipartEntityBuilder builder = MultipartEntityBuilder.create();
            builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);

            // 문자열 및 데이터 추가
            builder.addTextBody("email", email, ContentType.create("Multipart/related", "UTF-8"));
            builder.addTextBody("pw", pw, ContentType.create("Multipart/related", "UTF-8"));
            Log.d(TAG, "뭐야 "+email+"뭔디"+pw);
            String postURL = subJectIpConfig + "/app/LoginSelect";
            // 전송
            InputStream inputStream = null;
            httpClient = AndroidHttpClient.newInstance("ateam");
            httpPost = new HttpPost(postURL);
            httpPost.setEntity(builder.build());
            httpResponse = httpClient.execute(httpPost);
            httpEntity = httpResponse.getEntity();
            inputStream = httpEntity.getContent();

            loginDTO = readMessage(inputStream);


            /*StringBuilder stringBuilder = new StringBuilder();
            String line = null;
            while ((line = bufferedReader.readLine()) != null){
                stringBuilder.append(line + "\n");
            }
            String jsonStr = stringBuilder.toString();*/

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

        return null;
    }

    @Override
    protected void onPostExecute(Void aVoid) {

    }

    public LoginSignupDTO readMessage(InputStream inputStream) throws IOException {
        JsonReader reader = new JsonReader(new InputStreamReader(inputStream, "UTF-8"));

        String email = "", name = "", pw = "", job = "",admin="";

        reader.beginObject();
        while (reader.hasNext()) {
            String readStr = reader.nextName();
            if (readStr.equals("email")) {
                email = reader.nextString();
            } else if (readStr.equals("name")) {
                name = reader.nextString();
            } else if (readStr.equals("pw")) {
                pw = reader.nextString();
            } else if (readStr.equals("job")) {
                job = reader.nextString();
            }else if (readStr.equals("admin")) {
                admin = reader.nextString();
            }else {
                reader.skipValue();
            }
        }
        reader.endObject();
        Log.d("main:loginselect : ", email + "," + name + "," + pw + "," + job);
        return new LoginSignupDTO(email, name, pw, job,admin);

    }
}
