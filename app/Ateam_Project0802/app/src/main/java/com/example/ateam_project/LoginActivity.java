package com.example.ateam_project;

import android.Manifest;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import com.example.ateam_project.ATask.LoginSelect_ATask;
import com.example.ateam_project.DTO.Admin_Member_ListDTO;
import com.example.ateam_project.DTO.LoginSignupDTO;
import com.nhn.android.naverlogin.OAuthLogin;
import com.nhn.android.naverlogin.OAuthLoginHandler;
import com.nhn.android.naverlogin.ui.view.OAuthLoginButton;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;

public class LoginActivity extends AppCompatActivity {
    private static final String TAG = "LoginActivity";

    private String OAUTH_CLIENT_ID="b1eSl4BJ8gJQtC5c8_gH";
    private String OAUTH_CLIENT_SECRENT="JNAzauZeKM";
    private String OAUTH_CLIENT_NAME="네이버 아이디로 로그인";

    public static OAuthLoginButton mOAuthLoginButton;
    public static OAuthLogin mOAuthLoginInstance;
    public Map<String,String> mUserInfoMap;
    static String naverEmail;
    public static Context mContext;

    // 로그인이 성공하면 static 로그인DTO 변수에 담아서
    // 어느곳에서나 접근할 수 있게 한다
    public static LoginSignupDTO loginDTO = null;
    Admin_Member_ListDTO admin_member_listDTO;
    EditText etEmail,etPw;
    Button btnLogin, btnJoin;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.login);

        checkDangerousPermissions();

        mContext = LoginActivity.this;

        mOAuthLoginInstance = OAuthLogin.getInstance();
        mOAuthLoginInstance.showDevelopersLog(true);
        mOAuthLoginInstance.init(mContext,OAUTH_CLIENT_ID,OAUTH_CLIENT_SECRENT,OAUTH_CLIENT_NAME);

        mOAuthLoginButton=findViewById(R.id.Naver);
        mOAuthLoginButton.setOAuthLoginHandler(mOAuthLoginHandler);




        etEmail = findViewById(R.id.etEmail);
        etPw = findViewById(R.id.etPw);

        btnLogin = findViewById(R.id.btnLogin);
        btnJoin = findViewById(R.id.btnJoin);

        // 로그인 버튼
        btnLogin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(etEmail.getText().toString().length() != 0 && etPw.getText().toString().length() != 0){
                    String email = etEmail.getText().toString();
                    String pw = etPw.getText().toString();

                    LoginSelect_ATask loginSelectATask = new LoginSelect_ATask(email, pw);
                    try {
                        loginSelectATask.execute().get();
                    } catch (ExecutionException e) {
                        e.getMessage();
                    } catch (InterruptedException e) {
                        e.getMessage();
                    }

                } else {
                    Toast.makeText(LoginActivity.this, "아이디와 암호를 모두 입력하세요", Toast.LENGTH_SHORT).show();
                    Log.d("main:login", "아이디와 암호를 모두 입력하세요 !!!");
                    return;
                }

                if(loginDTO != null){
                    Toast.makeText(LoginActivity.this, "로그인 되었습니다 !!!", Toast.LENGTH_SHORT).show();
                    Log.d("main:login", loginDTO.getName() + "님 로그인 되었습니다 !!!");
                    //메인으로 이메일정보 넘기기

                    Intent emailIntent = new Intent(getApplicationContext(), MainActivity.class);
                    emailIntent.putExtra("emailId",loginDTO.getEmail());
                    emailIntent.putExtra("category",loginDTO.getJob());
                    startActivity(emailIntent);





                }else {
                    Toast.makeText(LoginActivity.this, "아이디나 비밀번호가 일치안함 !!!", Toast.LENGTH_SHORT).show();
                    Log.d("main:login", "아이디나 비밀번호가 일치안함 !!!");
                    etEmail.setText(""); etPw.setText("");
                    etEmail.requestFocus();
                }

            }
        });

        // 회원 가입 버튼
        btnJoin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // 회원가입 화면
                Intent intent = new Intent(getApplicationContext(), SignUpActivity.class);
                startActivity(intent);
            }
        });


    }

    //네이버로그인필요
    private OAuthLoginHandler mOAuthLoginHandler = new OAuthLoginHandler() {
        @Override
        public void run(boolean success) {
            if (success){
                //사용자 정보 가져오기
                String accessToken = mOAuthLoginInstance.getAccessToken(mContext);
                String refreshToken = mOAuthLoginInstance.getRefreshToken(mContext);
                long expiresAt = mOAuthLoginInstance.getExpiresAt(mContext);
                String tokenType = mOAuthLoginInstance.getTokenType(mContext);
                Log.d(TAG,accessToken);
                Log.d(TAG,refreshToken);
                Log.d(TAG,String.valueOf(expiresAt));
                Log.d(TAG,tokenType);
                Log.d(TAG, mOAuthLoginInstance.getState(mContext).toString());
                new RequestApiTask().execute();

            }else {
                //로그인 인증실패
                String errorCode = mOAuthLoginInstance.getLastErrorCode(mContext).getCode();
                String errorDesc = mOAuthLoginInstance.getLastErrorDesc(mContext);
                Toast.makeText(mContext, "errorCode : "+errorCode+"errorDesc : "+errorDesc, Toast.LENGTH_SHORT).show();
            }
        }
    };

    private class RequestApiTask extends AsyncTask<Void,Void,Void> {
        @Override
        protected void onPreExecute() {

        }

        @Override
        protected Void doInBackground(Void... voids) {
            String url = "https://openapi.naver.com/v1/nid/getUserProfile.xml";
            String at = mOAuthLoginInstance.getAccessToken(mContext);
            mUserInfoMap = requestNaverUserInfo(mOAuthLoginInstance.requestApi(mContext, at, url));

            return null;
        }
        protected void onPostExecute(Void content) {
            if (mUserInfoMap.get("email") == null) {
                Toast.makeText(mContext, "로그인 실패하였습니다.  잠시후 다시 시도해 주세요!!", Toast.LENGTH_SHORT).show();
            } else {
                Log.d(TAG, String.valueOf(mUserInfoMap));
                naverEmail=mUserInfoMap.get("nickname");
                Log.d(TAG, "onPostExecute: 닉네임확인 ");
                Log.d("main:login", naverEmail + "님 로그인 되었습니다 !!!");

                LoginSelect_ATask loginSelectATask = new LoginSelect_ATask(naverEmail, "0000");
                try {
                    loginSelectATask.execute().get();
                } catch (ExecutionException e) {
                    e.getMessage();
                } catch (InterruptedException e) {
                    e.getMessage();
                }

                // 네이버 로그인 시 이메일이 있다면
                if(loginDTO != null){
                    Intent intent = new Intent(getApplicationContext(), MainActivity.class);
                    startActivity(intent);
                }else {
                    Intent intent = new Intent(getApplicationContext(), SignUpNaverActivity.class);
                    startActivity(intent);
                }

            }

        }

        private Map<String,String> requestNaverUserInfo(String data) { // xml 파싱
            String f_array[] = new String[9];

            try {
                XmlPullParserFactory parserCreator = XmlPullParserFactory
                        .newInstance();
                XmlPullParser parser = parserCreator.newPullParser();
                InputStream input = new ByteArrayInputStream(
                        data.getBytes("UTF-8"));
                parser.setInput(input, "UTF-8");

                int parserEvent = parser.getEventType();
                String tag;
                boolean inText = false;
                boolean lastMatTag = false;

                int colIdx = 0;

                while (parserEvent != XmlPullParser.END_DOCUMENT) {
                    switch (parserEvent) {
                        case XmlPullParser.START_TAG:
                            tag = parser.getName();
                            if (tag.compareTo("xml") == 0) {
                                inText = false;
                            } else if (tag.compareTo("data") == 0) {
                                inText = false;
                            } else if (tag.compareTo("result") == 0) {
                                inText = false;
                            } else if (tag.compareTo("resultcode") == 0) {
                                inText = false;
                            } else if (tag.compareTo("message") == 0) {
                                inText = false;
                            } else if (tag.compareTo("response") == 0) {
                                inText = false;
                            } else {
                                inText = true;

                            }
                            break;
                        case XmlPullParser.TEXT:
                            tag = parser.getName();
                            if (inText) {
                                if (parser.getText() == null) {
                                    f_array[colIdx] = "";
                                } else {
                                    f_array[colIdx] = parser.getText().trim();
                                }

                                colIdx++;
                            }
                            inText = false;
                            break;
                        case XmlPullParser.END_TAG:
                            tag = parser.getName();
                            inText = false;
                            break;

                    }

                    parserEvent = parser.next();
                }
            } catch (Exception e) {
                Log.e("dd", "Error in network call", e);
            }
            Map<String,String> resultMap = new HashMap<>();
            resultMap.put("email"           ,f_array[0]);
            resultMap.put("nickname"        ,f_array[1]);
            resultMap.put("enc_id"          ,f_array[2]);
            resultMap.put("profile_image"   ,f_array[3]);
            resultMap.put("age"             ,f_array[4]);
            resultMap.put("gender"          ,f_array[5]);
            resultMap.put("id"              ,f_array[6]);
            resultMap.put("name"            ,f_array[7]);
            resultMap.put("birthday"        ,f_array[8]);

            return resultMap;
        }


    }



    private void checkDangerousPermissions() {
        String[] permissions = {
                Manifest.permission.INTERNET,
                Manifest.permission.ACCESS_NETWORK_STATE,
                Manifest.permission.ACCESS_WIFI_STATE
        };

        int permissionCheck = PackageManager.PERMISSION_GRANTED;
        for (int i = 0; i < permissions.length; i++) {
            permissionCheck = ContextCompat.checkSelfPermission(this, permissions[i]);
            if (permissionCheck == PackageManager.PERMISSION_DENIED) {
                break;
            }
        }

        if (permissionCheck == PackageManager.PERMISSION_GRANTED) {
            Toast.makeText(this, "권한 있음", Toast.LENGTH_LONG).show();
        } else {
            Toast.makeText(this, "권한 없음", Toast.LENGTH_LONG).show();

            if (ActivityCompat.shouldShowRequestPermissionRationale(this, permissions[0])) {
                Toast.makeText(this, "권한 설명 필요함.", Toast.LENGTH_LONG).show();
            } else {
                ActivityCompat.requestPermissions(this, permissions, 1);
            }
        }
    }

}
