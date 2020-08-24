package com.example.ateam_project;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.ateam_project.ATask.Dday_ListSelect;
import com.example.ateam_project.Adapter.Dday_ItemAdapter;
import com.example.ateam_project.DTO.Dday_ItemDTO;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

import java.util.ArrayList;
import java.util.concurrent.ExecutionException;

import static com.example.ateam_project.Common.CommonMethod.isNetworkConnected;
import static com.example.ateam_project.LoginActivity.loginDTO;


public class D_day_RecyclerViewMain extends AppCompatActivity {
    private static final String TAG = "main:RecyclerViewMain";
    
    //삭제할때
    public static Dday_ItemDTO selItem1 = null;

    RecyclerView recyclerView;
    Dday_ItemAdapter adapter;
    ArrayList<Dday_ItemDTO> list;
    FloatingActionButton Plus2;
    Dday_ListSelect ddayListSelect;
    Context context;
    Dday_ItemDTO dto;

    String title="", date="";
    Button imageButton1;
    String name;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dday_recycler_view_main);

        name=loginDTO.getName().trim();
        Log.d(TAG, "dday-name: "+name);

        //뒤로가기 버튼
        imageButton1=findViewById(R.id.imageButton1);
        imageButton1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent0 = new Intent(v.getContext(), MainActivity.class);
                startActivity(intent0);
            }
        });


        //ddayplus에서 받아오기
        Intent intent = getIntent();
        if (intent != null) {
            title = intent.getStringExtra("title");
            date = intent.getStringExtra("date");
        }
        list = new ArrayList<>();
        Plus2 = findViewById(R.id.Plus2);

        recyclerView = findViewById(R.id.recyclerview);
        // + 버튼 클릭시 화면이동
        Plus2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getApplicationContext(), Ddayplus.class);
                startActivity(intent);
            }
        });

        //리사이클러뷰 시작
        list = new ArrayList<>();
        recyclerView = findViewById(R.id.recyclerview);

        LinearLayoutManager layoutManager = new LinearLayoutManager(this, RecyclerView.VERTICAL,false);
        recyclerView.setLayoutManager(layoutManager);
        adapter = new Dday_ItemAdapter(this, list);
        recyclerView.setAdapter(adapter);

        if(isNetworkConnected(this)==true){
            ddayListSelect = new Dday_ListSelect(list, adapter,name);
            ////////////////////////////
            ///listSelect.execute();
            ///////////////////////////

            try {
                ddayListSelect.execute().get();
                adapter.notifyDataSetChanged();
               // String asd=list.get(0).getTitle();
               // Toast.makeText(context, asd, Toast.LENGTH_SHORT).show();
            } catch (ExecutionException e) {
                e.printStackTrace();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        adapter.notifyDataSetChanged(); //어댑터갱신
    }//oncreat


    ///////////////////////////////////////////////////
    @Override
    protected void onNewIntent(Intent intent) {
        Log.d(TAG, "onNewIntent: ");
        
        super.onNewIntent(intent);
        processIntent(intent);

    }

    private void processIntent(Intent intent) {
        if(intent != null){
            ddayListSelect = new Dday_ListSelect(list, adapter,name);
            try {
                ddayListSelect.execute().get();
            } catch (ExecutionException e) {
                e.printStackTrace();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
    ////////////////////////////////////////////////


}
