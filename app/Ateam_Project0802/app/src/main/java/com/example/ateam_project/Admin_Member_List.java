package com.example.ateam_project;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.ateam_project.ATask.Admin_Member_List_Select;
import com.example.ateam_project.Adapter.Admin_Member_List_Adapter;
import com.example.ateam_project.DTO.Admin_Member_ListDTO;

import java.util.ArrayList;
import java.util.concurrent.ExecutionException;

import static com.example.ateam_project.Common.CommonMethod.isNetworkConnected;

public class Admin_Member_List extends AppCompatActivity {
    public static Admin_Member_ListDTO admin_member_list_selItem = null;
    Button admin_memberList_back_btn;
    RecyclerView recyclerView;
    Admin_Member_List_Adapter adapter;
    ArrayList<Admin_Member_ListDTO> list;
    Admin_Member_List_Select adminMemberListSelect;
    Context context;
    Admin_Member_ListDTO dto;
    ///////////////추가
    String name;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.admin_memberlist);
        admin_memberList_back_btn=findViewById(R.id.admin_memberList_back_btn);
        admin_memberList_back_btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getApplicationContext(),MainActivity.class);
                startActivity(intent);
            }
        });
//        Intent intent = getIntent();
//        if(intent != null){
//            name = intent.getStringExtra("name");
//        }
        //뷰시작
        list = new ArrayList<>();
        recyclerView = findViewById(R.id.recyclerview);

        LinearLayoutManager layoutManager = new LinearLayoutManager(this, RecyclerView.VERTICAL, false );
        recyclerView.setLayoutManager(layoutManager);
        adapter = new Admin_Member_List_Adapter(this, list);
        recyclerView.setAdapter(adapter);

        if(isNetworkConnected(this)==true){
            adminMemberListSelect = new Admin_Member_List_Select(list, adapter);
            try {
                adminMemberListSelect.execute().get();
                adapter.notifyDataSetChanged();
            } catch (ExecutionException e) {
                e.printStackTrace();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        adapter.notifyDataSetChanged();
    }//onCreate

    @Override
    protected void onNewIntent(Intent intent){
        super.onNewIntent(intent);
        processIntent(intent);
    }
    private void processIntent(Intent intent){
        if(intent != null){
            adminMemberListSelect = new Admin_Member_List_Select(list, adapter);
           try{
              adminMemberListSelect.execute().get();
           }catch (ExecutionException e){
               e.printStackTrace();
           }catch (InterruptedException e){
               e.printStackTrace();
           }

        }
    }

}
