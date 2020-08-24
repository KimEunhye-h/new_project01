package com.example.ateam_project;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.ateam_project.ATask.NoticeList_Atask;
import com.example.ateam_project.Adapter.NoticeAdapter;
import com.example.ateam_project.DTO.NoticeDTO;

import java.util.ArrayList;
import java.util.concurrent.ExecutionException;


public class NoticeList extends AppCompatActivity {

    public static NoticeDTO noticeselItem = null;
    NoticeList_Atask notice_listAtask;
    RecyclerView notice_recyclerView;
    ArrayList<NoticeDTO> dtos;
    public static NoticeDTO noticeDTO=null;
    Button notice_back_btn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.noticelist);




        noticeDTO=new NoticeDTO("김은혜", "안ㅁㅁㅁㅁㅁㅁㅁ", "2:10:03", "2020-07-14 14:12:10");
        notice_recyclerView = findViewById(R.id.notice_recyclerView);

        LinearLayoutManager layoutManager = new LinearLayoutManager
                (this,RecyclerView.VERTICAL, false);
        notice_recyclerView.setLayoutManager(layoutManager);
        dtos  =  new ArrayList<>();
        NoticeAdapter adapter = new NoticeAdapter(this,dtos);



        notice_recyclerView.setAdapter(adapter);


        notice_listAtask = new NoticeList_Atask(dtos, adapter, noticeDTO.getName());
        try {
            notice_listAtask.execute().get();

        } catch (ExecutionException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        adapter.notifyDataSetChanged();

        notice_back_btn=findViewById(R.id.notice_back_btn);
        notice_back_btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });

    }
}
