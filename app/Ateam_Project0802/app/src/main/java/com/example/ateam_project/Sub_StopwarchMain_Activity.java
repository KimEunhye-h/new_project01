package com.example.ateam_project;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;

import com.example.ateam_project.ATask.Time_sel_ATask;
import com.example.ateam_project.ATask.Time_update_ATask;
import com.example.ateam_project.Adapter.SubFragmentAdpter;
import com.example.ateam_project.DTO.TimeDTO;
import com.google.android.material.tabs.TabLayout;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.TimeZone;
import java.util.concurrent.ExecutionException;

import static com.example.ateam_project.LoginActivity.loginDTO;

public class Sub_StopwarchMain_Activity extends AppCompatActivity {
    FragmentPagerAdapter adapterViewPager;
    private WebView mWebView;
    private static final String TAG = "MainActivity";
    public static TimeDTO timeDTO = null;
    String name;



    TextView txtResult;
    TextView myOutput;
    Button myBtnStart;
    TextView time_out;
    String Ttim11e;
    /*final static int Init = 0;*/
    final static int Run = 0;
    final static int Pause = 1;
    int cur_Status = Run; //현재의 상태를 저장할변수를 초기화함.
    long myBaseTime;
    long myPauseTime;
    private Intent serviceIntent;

    String state;
    String subject;
    String easy_outTime;
    String subjectTime;

    long timeInMilliseconds = 0;
    long tmtm = 0;

    Button dbbtn;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.sub_activity_main);

        name=loginDTO.getName();

        Intent subjecNameIntent = getIntent();
        subject=subjecNameIntent.getStringExtra("subjectName");
        Log.d(TAG, "subjectName: "+subject);
        //해당 화면 도착시 시간이 흐름
        myBaseTime = SystemClock.elapsedRealtime();
        myTimer.sendEmptyMessage(0);




        Time_sel_ATask timesel = new Time_sel_ATask(name,subject);
        try {
            timesel.execute().get();
        } catch (ExecutionException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }


        Ttim11e=timeDTO.getSudjecttime();
        Log.d(TAG, "time:123 "+Ttim11e);
        Toast.makeText(this, "가져온값"+timeDTO.getSubject()+","+timeDTO.getSudjecttime(), Toast.LENGTH_SHORT).show();


        txtResult = findViewById(R.id.txtResult);
        myOutput = findViewById(R.id.time_out);
        myBtnStart = findViewById(R.id.btn_start);
        myBtnStart = findViewById(R.id.btn_start);
        time_out = findViewById(R.id.time_out);



        //프레그먼트 슬라이드 화면 구현
        ViewPager vpPager = findViewById(R.id.vpPager);
        SubFragmentAdpter adpter = new SubFragmentAdpter(getSupportFragmentManager());
        vpPager.setAdapter(adpter);

        //하단 탭 레이어 구현
        TabLayout tab = findViewById(R.id.tab);
        tab.setupWithViewPager(vpPager);

        ArrayList<Integer> images = new ArrayList<>();
        images.add(R.drawable.a);
        images.add(R.drawable.b);
        /*images.add(R.drawable.c);*/

        //DB에 현재 시간과 날짜와 과목을 보내는 곳
        for (int i = 0; i < 2; i++) tab.getTabAt(i).setIcon(images.get(i));

//        dbbtn = findViewById(R.id.dbbtn);
//        dbbtn.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View v) {
//                easy_outTime = getTimeOut();
//                //날짜
//                long now = System.currentTimeMillis();
//                Date date = new Date(now);
//                SimpleDateFormat sdfNow = new SimpleDateFormat("yyyy/MM/dd");
//                String formatDate = sdfNow.format(date);
//
//                //ATask를 생성하여 값을 리턴받기
//                Time_add_ATask time_add_aTask = new Time_add_ATask(subject, easy_outTime, formatDate);
//                try {
//                    state = time_add_aTask.execute().get().trim();
//                } catch (ExecutionException e) {
//                    e.getMessage();
//                } catch (InterruptedException e) {
//                    e.getMessage();
//                }
//
//                if (state.equals("1")) {
//                    Toast.makeText(StopwarchMain_Activity.this, "삽입성공 !!!", Toast.LENGTH_SHORT).show();
//                    Log.d("main:joinact", "삽입성공 !!!");
//
//                } else {
//                    Toast.makeText(StopwarchMain_Activity.this, "삽입실패 !!!", Toast.LENGTH_SHORT).show();
//                    Log.d("main:joinact", "삽입실패 !!!");
//
//                }
//            }
//        });
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1) {
            if (resultCode == RESULT_OK) {
                //데이터 받기
                String result = data.getStringExtra("result");
                txtResult.setText(result);
            }
        }
    }
    int i;

    //스탑워치
    public void myOnClick(View v) {
        switch (v.getId()) {
            case R.id.btn_start: //시작버튼을 클릭했을때 현재 상태값에 따라 다른 동작을 할수있게끔 구현.
                switch (cur_Status) {
                    /*case Init:*/
                        /*myBaseTime = SystemClock.elapsedRealtime();

                        Log.d(TAG, "myBase: ");
                        //myTimer이라는 핸들러를 빈 메세지를 보내서 호출
                        myTimer.sendEmptyMessage(0);
                        myBtnStart.setText(""); //버튼의 문자"시작"을 "멈춤"으로 변경
                        cur_Status = Run; //현재상태를 런상태로 변경

                        Toast.makeText(this, "run", Toast.LENGTH_SHORT).show();
                        break;*/

                    case Run:
                        myTimer.removeMessages(0); //핸들러 메세지 제거
                        myPauseTime = SystemClock.elapsedRealtime();
                        myBtnStart.setText("");
                        /*myBtnRec.setText("리셋");*/
                        cur_Status = Pause;

                        Toast.makeText(this, "메인으로 가야되는 버튼이거늘", Toast.LENGTH_SHORT).show();
                        Toast.makeText(this, "pause", Toast.LENGTH_SHORT).show();

                        subjectTime=getTimeOut();
                        Time_update_ATask timeUpdateATask = new Time_update_ATask(name,subject,subjectTime);
                        try {
                            timeUpdateATask.execute().get();
                        } catch (ExecutionException e) {
                            e.printStackTrace();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }


//                    메인으로 이동 추후 변경

                        i=1;
                        Intent intent = new Intent(getApplicationContext(), MainActivity.class );
                        startActivity(intent);


                        Intent intent2 = new Intent(this, Sub_PopupActivity.class);
                        intent2.putExtra("data", getTimeOut() + "까지 기록되었습니다.");
                        startActivityForResult(intent2, 1);

                        break;

                    //
                    case Pause:
                        //시간 데이터를 받은 메소드로 실행
                        myTimer.sendEmptyMessage(0);
                        //확인용 텍스트 변경
                        myBtnStart.setText("멈춤");
                        cur_Status = Run;

                        Toast.makeText(this, "메인으로 이동", Toast.LENGTH_SHORT).show();

                        break;
                    //db를 받아오면서 init 으로 넘어감
                }
                break;
        }

    }

    //타이머 테스트를 보내 수정하는 메소드
    Handler myTimer = new Handler() {
        public void handleMessage(Message msg) {
            myOutput.setText(getTimeOut());

            //sendEmptyMessage 는 비어있는 메세지를 Handler 에게 전송하는겁니다.
            myTimer.sendEmptyMessage(0);
        }
    };

    //현재시간을 계속 구해서 출력하는 메소드
    String getTimeOut(){
        long now = SystemClock.elapsedRealtime(); //애플리케이션이 실행되고나서 실제로 경과된 시간(??)^^;

        tmtm = time();
        long outTime = now - myBaseTime;
        Log.d(TAG, "나우" + now+"타임()"+time());
        String easy_outTime = String.format("%02d:%02d:%02d", (((long)time())+outTime)/1000 / 3600, (((((long)time())+outTime)/1000) / 60)%60, ((((long)time())+outTime)/1000)%60/*, (outTime%1000)/10*/);
        String easy_outTime2 = String.format("%02d:%02d:%02d", outTime/1000 / 3600, +outTime/1000 / 60%60, (outTime/1000)%60/*, (outTime%1000)/10*/);
        Log.d(TAG, "getTimeOut: " + easy_outTime);

        return easy_outTime;
    }


    //받은 db 값을 SimpleDateFormat 하여 유닉스 시간으로 수정하는 메소드
    public long time() {


        String givenDateString = Ttim11e;
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
        sdf.setTimeZone(TimeZone.getTimeZone("Etc/UTC"));
        String bt = null;
        try {
            Date mDate = sdf.parse(givenDateString);
            timeInMilliseconds = mDate.getTime();
            Log.d(TAG, "timeIn: " + timeInMilliseconds);

        } catch (Exception e) {
            e.printStackTrace();

        }
        return timeInMilliseconds;
    }


    public void mOnPopupClick(View v){
        //데이터 담아서 팝업(액티비티) 호출
        Intent intent = new Intent(this, Sub_PopupActivity.class);
        intent.putExtra("data", "Test Popup");
        startActivityForResult(intent, 1);
    }

    @Override
    public void onBackPressed() {
        /*super.onBackPressed();

        startActivity(new Intent(this, lockView.class));
        Intent intent2 = new Intent(this, PopupActivity.class);
        intent2.putExtra("data", getTimeOut() + "까지 기록되었습니다.");

        //DB넘기는곳
        subjectTime=getTimeOut();
        Time_update_ATask timeUpdateATask = new Time_update_ATask(subject,subjectTime);
        try {
            timeUpdateATask.execute().get();
        } catch (ExecutionException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        //
        startActivityForResult(intent2, 1);*/
        i=2;
        Intent intent = new Intent(getApplicationContext(), MainActivity.class );
        startActivity(intent);

        Intent intent2 = new Intent(this, Sub_PopupActivity.class);
        intent2.putExtra("data", getTimeOut() + "까지 기록되었습니다.");
        subjectTime=getTimeOut();
        Time_update_ATask timeUpdateATask = new Time_update_ATask(name,subject,subjectTime);
        try {
            timeUpdateATask.execute().get();
        } catch (ExecutionException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        startActivityForResult(intent2, 1);
    }

    /*@Override
    protected void onUserLeaveHint() {
        super.onUserLeaveHint();

        startActivity(new Intent(this, lockView.class));
        Intent intent2 = new Intent(this, PopupActivity.class);
        intent2.putExtra("data", getTimeOut() + "까지 기록되었습니다.");

        //DB넘기는곳
        subjectTime=getTimeOut();
        Time_update_ATask timeUpdateATask = new Time_update_ATask(subject,subjectTime);
        try {
            timeUpdateATask.execute().get();
        } catch (ExecutionException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        //
        startActivityForResult(intent2, 1);

    }*/

    //메뉴키 막기
    @Override
    protected void onStop() {
        super.onStop();
        if(i==1 || i == 2){

        }else{
            startActivity(new Intent(this, MainActivity.class));
            Intent intent2 = new Intent(this, Sub_PopupActivity.class);
            intent2.putExtra("data", getTimeOut() + "까지 기록되었습니다.");

            //DB넘기는곳
            subjectTime=getTimeOut();
            Time_update_ATask timeUpdateATask = new Time_update_ATask(name,subject,subjectTime);
            try {
                timeUpdateATask.execute().get();
            } catch (ExecutionException e) {
                e.printStackTrace();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

            //
            startActivityForResult(intent2, 1);
        }


    }
}
