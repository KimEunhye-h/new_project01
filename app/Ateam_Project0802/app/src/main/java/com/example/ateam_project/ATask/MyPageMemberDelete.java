package com.example.ateam_project.ATask;

import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntityBuilder;

import java.io.InputStream;
import java.nio.charset.Charset;

import static com.example.ateam_project.Common.CommonMethod.subJectIpConfig;

public class MyPageMemberDelete extends AsyncTask<Void,Void,String> {
    String name;

    public MyPageMemberDelete(String name){
        this.name=name;
    }
    @Override
    protected void onPreExecute() {
        super.onPreExecute();
        //  프로그래스바 보이게
    }

    @Override
    protected String doInBackground(Void... voids) {
        HttpClient httpClient = AndroidHttpClient.newInstance("Android");
        try {
            // MultipartEntityBuild 생성
            String postURL = subJectIpConfig + "/app/mypageMemberDelete";
            MultipartEntityBuilder builder = MultipartEntityBuilder.create();
            builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);
            builder.setCharset(Charset.forName("UTF-8"));

            // 문자열 및 데이터 추가
            builder.addTextBody("name", name, ContentType.create("Multipart/related", "UTF-8"));


            // 전송
            InputStream inputStream = null;
            httpClient = AndroidHttpClient.newInstance("Android");
            HttpPost httpPost = new HttpPost(postURL);
            httpPost.setEntity(builder.build());
            HttpResponse httpResponse = httpClient.execute(httpPost);
            HttpEntity httpEntity = httpResponse.getEntity();
            inputStream = httpEntity.getContent();

            /*// 응답
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            StringBuilder stringBuilder = new StringBuilder();
            String line = null;
            while ((line = bufferedReader.readLine()) != null){
                stringBuilder.append(line + "\n");
            }
         //   state = stringBuilder.toString();
            inputStream.close();

            // 응답결과
            String result = stringBuilder.toString();
            Log.d("response", result);
*/
        } catch (Exception e) {
            e.printStackTrace();
        }
         return null;
        }
       // return state;
       @Override
       protected void onPostExecute(String result) {
           super.onPostExecute(result);
           //dialog.dismiss();

    }
}
