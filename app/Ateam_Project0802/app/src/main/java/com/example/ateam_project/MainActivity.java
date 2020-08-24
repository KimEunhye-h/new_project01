package com.example.ateam_project;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.ateam_project.ATask.Dday_ListOnly;
import com.example.ateam_project.ATask.Dday_ListSelect;
import com.example.ateam_project.ATask.Subject_Day_Total_Time_ATask;
import com.example.ateam_project.ATask.Subject_Dday;
import com.example.ateam_project.ATask.Subject_List_ATask;
import com.example.ateam_project.Adapter.Dday_ItemAdapter;
import com.example.ateam_project.Adapter.SubjectAdapter;
import com.example.ateam_project.DTO.Dday_ItemDTO;
import com.example.ateam_project.DTO.LoginSignupDTO;
import com.example.ateam_project.DTO.SubjectDTO;
import com.example.ateam_project.DTO.Subject_Day_Time_TotalDTO;
import com.example.ateam_project.Fragment.Fragment1;
import com.example.ateam_project.Fragment.Fragment2;
import com.example.ateam_project.Fragment.Fragment3;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.navigation.NavigationView;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.concurrent.ExecutionException;

import static com.example.ateam_project.Common.CommonMethod.isNetworkConnected;
import static com.example.ateam_project.LoginActivity.loginDTO;

public class MainActivity extends AppCompatActivity implements NavigationView.OnNavigationItemSelectedListener {
    public static SubjectDTO selItem = null;
    public static Dday_ItemDTO Dday_DTO = null;
    public static Subject_Day_Time_TotalDTO DTTotalDTO = null;
    public static int fragBackIdx = 0;
    String name,admin,loginName;



    //바텀 내비게이션 뷰
    BottomNavigationView bottomNavigationView;
    FragmentManager fm;
    FragmentTransaction ft;
    Fragment1 fragment1;
    Fragment2 fragment2;
    Fragment3 fragment3;
    ImageView subjectStart;
    Context context;
    //리사이클러뷰 리스트
    ArrayList<SubjectDTO> subjectList;
    ArrayList<Dday_ItemDTO> list = new ArrayList<>();
    SubjectAdapter adapter;
    Dday_ItemAdapter dday_itemAdapter;
    Subject_List_ATask subject_list_aTask;
    D_day_RecyclerViewMain d_day_recyclerViewMain = new D_day_RecyclerViewMain();
    Dday_ListSelect dday_listSelect;
    Subject_Dday subject_Dday;
    Subject_Day_Total_Time_ATask subject_day_total_time_aTask=null;
    Toolbar toolbar;
    TextView toolbarText,btnAdd;
    TextView myOutput, today;
    Button myBtnStart;
    RecyclerView recyclerView;
    RecyclerView ddayrecyclerView;
    Intent intent;
    View bottom_item1,bottom_item2,bottom_item3;
    static TextView loginId1;
    TextView category,jajaja;

    LoginSignupDTO menuDTO = null;

    String loginEmail,loginCategory;
    final static int Init =0;
    final static int Run =1;
    final static int Pause =2;

    int cur_Status = Init; //현재의 상태를 저장할변수를 초기화함.
    int myCount=1;
    long myBaseTime;
    long myPauseTime;
    private static final String TAG = "MainActivity";
    TextView time_out;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        name=loginDTO.getName();
        time_out=findViewById(R.id.time_out);
        //메인페이지 로그인한 사람의 총시간 표시

        //time_out.setText(DTTotalDTO.getTime());
        Subject_Day_Total_Time_ATask subject_day_total_time_aTask = new Subject_Day_Total_Time_ATask(name);
        try {
            subject_day_total_time_aTask.execute().get();
        } catch (ExecutionException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        time_out.setText(DTTotalDTO.getTime());

        NavigationView navigationView = findViewById(R.id.nav_view);
        navigationView.setNavigationItemSelectedListener(this);


        // 헤드 드로어에 로그인 정보 표시하기
        admin=loginDTO.getAdmin().trim();

        Log.d(TAG, "admin : "+admin);
        View headerView = navigationView.getHeaderView(0);

        //햄버거 메뉴 관리자로그인시 보이게하기
        if(admin.equals("y")){
            navigationView.getMenu().findItem(R.id.communi)
                    .setVisible(true);

        }

        //햄버거메뉴버튼에 닉네임 띄우기
        loginId1=headerView.findViewById(R.id.loginId);
        category=headerView.findViewById(R.id.category);

        loginName=loginDTO.getName();
        loginCategory=loginDTO.getJob();
        loginId1.setText(loginName+"님");
        category.setText(loginCategory);



        //툴바 D-Day 클릭
        toolbarText = findViewById(R.id.toolbarText);
        toolbarText.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getApplicationContext(),D_day_RecyclerViewMain.class);
                startActivity(intent);

            }
        });

        if(isNetworkConnected(this)){
            ArrayList<Dday_ItemDTO> list2 =  new ArrayList<>();
            Dday_ListOnly listOnly = new Dday_ListOnly(list2,name);

            try {
                listOnly.execute().get();
            } catch (ExecutionException e) {
                e.printStackTrace();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

            if (list2.size() == 0) {
                toolbarText.setText("D-Day를 추가해주세요.");
            } else {
                // itemlist.get(0)
                String dday_title=list2.get(0).getTitle();
                String dday_result=list2.get(0).getDiff_day();
                toolbarText.setText(dday_title+"  D - "+dday_result);
            }
        }



        //바텀 내비게이션 뷰
        bottomNavigationView = findViewById(R.id.bottomNavi);

        //바텀 프레그먼트
        bottomNavigationView.setOnNavigationItemSelectedListener(new BottomNavigationView.OnNavigationItemSelectedListener() {
            @Override
            public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {
                switch (menuItem.getItemId())
                {
                    case R.id.time_sum:
                        intent = new Intent(getApplicationContext(), StudyCalMain.class);
                        startActivity(intent);
                      //  setFrag(0);
                        break;
                    case R.id.main_page:
//                        intent = new Intent(getApplicationContext(), Fragment2.class);
//                        startActivity(intent);
                        setFrag(1);
                        break;
                    case R.id.friend_list:
                        intent = new Intent(getApplicationContext(), FriendList.class);
                        startActivity(intent);
                   //     setFrag(2);
                        break;
                }
                return true;
            }
        });
        fragment1=new Fragment1();
        fragment2=new Fragment2();
        fragment3=new Fragment3();
        setFrag(1);

        //메인 날짜표시
        long now = System.currentTimeMillis();
        Date date = new Date(now);
        SimpleDateFormat sdfNow = new SimpleDateFormat("yy.MM.dd");
        String formatDate = sdfNow.format(date);
        today = findViewById(R.id.today);
        today.setText(formatDate);


        //리사이클러뷰 목록 과목추가
        subjectList = new ArrayList<>();//어레이 리스트
        recyclerView = findViewById(R.id.recyclerView);
        LinearLayoutManager layoutManager = new LinearLayoutManager(this,RecyclerView.VERTICAL,false);
        recyclerView.setLayoutManager(layoutManager);

        adapter = new SubjectAdapter(this,subjectList);

        recyclerView.setAdapter(adapter);

        if(isNetworkConnected(this)==true){
            subject_list_aTask = new Subject_List_ATask(subjectList,adapter,name);

            try {
                subject_list_aTask.execute().get();

            } catch (ExecutionException e) {
                e.printStackTrace();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

        }





        btnAdd = findViewById(R.id.btnAdd);
        //과목 추가버튼
        btnAdd.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                intent = new Intent(getApplicationContext(), Subject_Add.class);
                startActivityForResult(intent, 1001);//엑티비티 넘길때 값을 돌려받는다
            }
        });
        //adapter.notifyDataSetChanged();



        //스톱워치
        myOutput = (TextView) findViewById(R.id.time_out);

        //툴바
        toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayShowTitleEnabled(false);

        DrawerLayout drawer = findViewById(R.id.drawer_layout);
        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(
                this, drawer, toolbar, R.string.navigation_drawer_open
                , R.string.navigation_drawer_close );
        drawer.addDrawerListener(toggle);
        toggle.syncState();









    }//onCreat 마지막


    //햄버거 버튼 클릭시
    @Override
    public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {
        int id = menuItem.getItemId();

        if(id==R.id.nav_notice){
            Toast.makeText(this, "공지사항 메뉴 선택", Toast.LENGTH_SHORT).show();
            onFragmentSelected(0,null);
        }else if(id==R.id.nav_mypage){
            Toast.makeText(this, "계정 메뉴 선택", Toast.LENGTH_SHORT).show();
            onFragmentSelected(1,null);
        }else if(id==R.id.nav_dday){
            Toast.makeText(this, "D-Day 메뉴 선택", Toast.LENGTH_SHORT).show();
            onFragmentSelected(2,null);
        }else if(id==R.id.nav_help){
            Toast.makeText(this, "도움말 메뉴 선택", Toast.LENGTH_SHORT).show();
            onFragmentSelected(3,null);
        }else if(id==R.id.nav_question){
            Toast.makeText(this, "문의하기 메뉴 선택", Toast.LENGTH_SHORT).show();
            onFragmentSelected(4,null);
        }else if(id==R.id.nav_member_list_all){
            Toast.makeText(this, "전체회원관리 메뉴 선택", Toast.LENGTH_SHORT).show();
            onFragmentSelected(5,null);
        }else if(id==R.id.nav_notice_write){
            Toast.makeText(this, "공지사항글쓰기 메뉴 선택", Toast.LENGTH_SHORT).show();
            onFragmentSelected(6,null);
        }else if(id==R.id.nav_logOut){
            Toast.makeText(this, "로그아웃 메뉴 선택", Toast.LENGTH_SHORT).show();
            onFragmentSelected(7,null);
        }

        DrawerLayout drawer = findViewById(R.id.drawer_layout);
        drawer.closeDrawer(GravityCompat.START);

        return true;
    }
    NoticeList noticeList = new NoticeList();
    public void onFragmentSelected(int position,Bundle bundle){
        Fragment curFragment = null;
        Intent email = new Intent(Intent.ACTION_SEND);
        if(position == 0){//공지사항
            Intent noticeIntent = new Intent(getApplicationContext(), NoticeList.class);
            startActivity(noticeIntent);
        }else if(position == 1){//계정
            Intent intentMypage = new Intent(getApplicationContext(), MyPageMain.class);
            startActivity(intentMypage);
        }else if(position == 2){//D-day
            Intent intentDdayList = new Intent(getApplicationContext(), D_day_RecyclerViewMain.class);
            startActivity(intentDdayList);
        }else if(position == 3){//도움말
            Intent intentHelp = new Intent(getApplicationContext(), HelpPage.class);
            startActivity(intentHelp);
        }else if(position == 4){//문의하기 메일
            email.setType("plain/text");
            String[] address = {"wingkar@naver.com"};
            email.putExtra(Intent.EXTRA_EMAIL,address);
            email.putExtra(Intent.EXTRA_SUBJECT,"문의하세요");
            email.putExtra(Intent.EXTRA_TEXT,"불편드려 죄송합니다. \n 문의사항을 적어 보내주시면 빠른 답변 드리겠습니다.");
            startActivity(email);
        }else if(position == 5){//전체회원관리
            Intent intentMemberList = new Intent(getApplicationContext(), Admin_Member_List.class);
            startActivity(intentMemberList);
        }else if(position == 6){//공지사항 글쓰기
            Intent intentNoticeWrite = new Intent(getApplicationContext(), NoticeWrite.class);
            startActivity(intentNoticeWrite);
        }else if(position == 7){//로그아웃

            AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this);
            builder.setTitle("로그아웃");
            builder.setMessage("정말 로그아웃 하시겠습니까?");
            builder.setPositiveButton("확인", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    loginDTO=null;
                    Intent intentLogOut = new Intent(getApplicationContext(), LoginActivity.class);
                    startActivity(intentLogOut);
                }
            });
            builder.setNegativeButton("취소", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                }
            });
            builder.create().show();
        }



    }


    //////필요한가
    // 이미 화면이 있을때 받는곳
    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Log.d("Sub1", "onNewIntent() 호출됨");

        // 새로고침하면서 이미지가 겹치는 현상 없애기 위해...
        adapter.removeAllItem();
        processIntent(intent);

    }
    private void processIntent(Intent intent){
        if(intent != null){

            subject_list_aTask = new Subject_List_ATask(subjectList,adapter,name);
            subject_list_aTask.execute();

            dday_listSelect = new Dday_ListSelect(list,dday_itemAdapter,name);
            dday_listSelect.execute();

            subject_day_total_time_aTask = new Subject_Day_Total_Time_ATask(name);

            subject_day_total_time_aTask.execute();
            Intent intent1 = new Intent(getApplicationContext(), MainActivity.class);
            //삭제 후 화면 갱신
            intent1.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_SINGLE_TOP | Intent.FLAG_ACTIVITY_CLEAR_TASK);
            getApplication().startActivity(intent1);
            time_out.setText(DTTotalDTO.getTime());
        }
    }
    //////여기까지

    //엑티비티 이동 후 돌려받은 값 처리
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if(requestCode == 1001){
            subject_list_aTask = new Subject_List_ATask(subjectList,adapter,name);
            subject_list_aTask.execute();
            dday_listSelect = new Dday_ListSelect(list,dday_itemAdapter,name);
            dday_listSelect.execute();
        }

    }



    // 프레그먼트 교체
    private void setFrag(int n)
    {
        fm = getSupportFragmentManager();
        ft= fm.beginTransaction();
        switch (n)
        {
            case 0:
                //ft.replace(R.id.Main_Frame,fragment1);
                ft.commit();
                break;

            case 1:
                ft.replace(R.id.Main_Frame,fragment2);
                ft.commit();
                break;

            case 2:
               // ft.replace(R.id.Main_Frame,fragment3);
                ft.commit();
                break;


        }
    }





    @Override
    public void onBackPressed() {
        DrawerLayout drawer = findViewById(R.id.drawer_layout);
        if(drawer.isDrawerOpen(GravityCompat.START)){
            drawer.closeDrawer(GravityCompat.START);
        }else {
            return;
//            super.onBackPressed();
        }

    }


    //스톱워치
    @Override
    protected void onDestroy() {

        super.onDestroy();
    }




    Handler myTimer = new Handler(){
        public void handleMessage(Message msg){
            myOutput.setText(getTimeOut());
            //sendEmptyMessage 는 비어있는 메세지를 Handler 에게 전송하는겁니다.
            myTimer.sendEmptyMessage(0);
        }
    };
    //현재시간을 계속 구해서 출력하는 메소드
    String getTimeOut(){
        long now = SystemClock.elapsedRealtime(); //애플리케이션이 실행되고나서 실제로 경과된 시간(??)^^;
        long outTime = now - myBaseTime;
        String easy_outTime = String.format("%02d:%02d:%02d", outTime/1000 / 60, (outTime/1000)%60,(outTime%1000)/10);
        return easy_outTime;

    }

}
