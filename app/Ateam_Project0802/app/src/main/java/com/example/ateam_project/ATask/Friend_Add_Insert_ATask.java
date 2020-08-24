
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


public class Friend_Add_Insert_ATask extends AsyncTask<Void,Void,String> {

    String user_name,name,email,job, state2 = "";

    public Friend_Add_Insert_ATask(String user_name, String name, String email, String job) {
        this.user_name = user_name;
        this.name = name;
        this.email = email;
        this.job = job;
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
            builder.addTextBody("user_name", user_name, ContentType.create("Multipart/related", "UTF-8"));
            builder.addTextBody("name", name, ContentType.create("Multipart/related", "UTF-8"));
            builder.addTextBody("email", email, ContentType.create("Multipart/related", "UTF-8"));
            builder.addTextBody("job", job, ContentType.create("Multipart/related", "UTF-8"));

            String postURL = subJectIpConfig + "/app/FriendAddInsert";
            // 전송
            InputStream inputStream = null;
            httpClient = AndroidHttpClient.newInstance("ateam");
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
            state2 = stringBuilder.toString();
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



        return state2;
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

