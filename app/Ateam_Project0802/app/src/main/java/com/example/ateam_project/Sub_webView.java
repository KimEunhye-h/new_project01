package com.example.ateam_project;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import java.util.ArrayList;

public class Sub_webView extends Activity {
    private static final String TAG = "webView";
    private WebView mWebView;

    private ArrayList<WordItmeDataDTO> list = new ArrayList<>();

    private String myUrl = "http://";// 접속 URL (내장HTML의 경우 왼쪽과 같이 쓰고 아니면 걍 URL)
    String url="";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.sub_web_view_activity);
        WordItmeDataDTO data = new WordItmeDataDTO();

        //String siteUrl =  intent.getStringExtra("url");
        Intent intent = getIntent();
        if(intent != null){
             url= "https://" + intent.getStringExtra("url");
            Log.d(TAG, "onCreate: "+intent.getStringExtra("url"));

            // 사이즈조절
            // 1. 디스플레이 화면 사이즈 구하기
            Display dp = ((WindowManager)getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay();
            // 2. 화면 비율 설정
            int width = (int)(dp.getWidth()*1);
            int height = (int)(dp.getHeight()*0.8);
            // 3. 현재 화면에 적용
            getWindow().getAttributes().width = width;
            getWindow().getAttributes().height = height;

        }

        //웹뷰시작
        // 웹뷰 셋팅
        mWebView =findViewById(R.id.webView);//xml 자바코드 연결
        mWebView.getSettings().setJavaScriptEnabled(true);//자바스크립트 허용


       // mWebView.loadUrl(siteUrl);//웹뷰 실행
        mWebView.setWebChromeClient(new WebChromeClient());//웹뷰에 크롬 사용 허용//이 부분이 없으면 크롬에서 alert가 뜨지 않음
        mWebView.setWebViewClient(new WebViewClient());//새창열기 없이 웹뷰 내에서 다시 열기//페이지 이동 원활히 하기위해 사용

        mWebView.getSettings().setDomStorageEnabled(true);
        mWebView.loadUrl(url); // 웹뷰에 표시할 웹사이트 주소, 웹뷰 시작
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {//뒤로가기 버튼 이벤트
        if ((keyCode == KeyEvent.KEYCODE_BACK) && mWebView.canGoBack()) {//웹뷰에서 뒤로가기 버튼을 누르면 뒤로가짐
            mWebView.goBack();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    private class WebViewClientClass extends WebViewClient {//페이지 이동
        @Override
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            Log.d("check URL",url);
            view.loadUrl(url);
            return true;
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_min, menu);

        return true;
    }

    /*@Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        int id = item.getItemId();
        Intent intent = new Intent(getApplicationContext(), MainActivity.class);
        startActivity(intent);

        return super.onOptionsItemSelected(item);
    }*/

    //확인 버튼 클릭
   /* public void mOnClose(View v){
        //데이터 전달하기
        Intent intent = new Intent();
        intent.putExtra("result", "Close Popup");
        setResult(RESULT_OK, intent);

        //액티비티(팝업) 닫기
        finish();
    }
*/


}


