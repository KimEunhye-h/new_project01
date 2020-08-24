package com.example.ateam_project;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.example.ateam_project.ATask.NoticeList_Atask;
import com.example.ateam_project.Adapter.NoticeAdapter;
import com.example.ateam_project.DTO.NoticeDTO;

import java.util.ArrayList;

public class NoticeListDetail extends AppCompatActivity {
    TextView textView1,textView2;
    NoticeList_Atask notice_listAtask;
    ArrayList<NoticeDTO> list;
    NoticeAdapter adapter = new NoticeAdapter(this,list);
    Intent intent ;
    Button noticeDetail_back_btn;
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.notice_list_detail);
        textView1=findViewById(R.id.textView1);
        textView2=findViewById(R.id.textView2);
        noticeDetail_back_btn=findViewById(R.id.noticeDetail_back_btn);
        noticeDetail_back_btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });


        intent=getIntent();
        String title = intent.getStringExtra("title");
        String content = intent.getStringExtra("content");
        textView1.setText(title);
        textView2.setText(content);

//        subject_list2_aTask = new Subject_List2_ATask(list, adapter, loginDto.getName());
//        try {
//            subject_list2_aTask.execute().get();
//
//        } catch (ExecutionException e) {
//            e.printStackTrace();
//        } catch (InterruptedException e) {
//            e.printStackTrace();
//        }

    }





}
