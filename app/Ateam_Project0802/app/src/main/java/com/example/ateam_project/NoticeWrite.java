package com.example.ateam_project;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.example.ateam_project.ATask.NoticeAdd_ATask;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ExecutionException;

import static com.example.ateam_project.MainActivity.fragBackIdx;

public class NoticeWrite extends AppCompatActivity {

    MainActivity activity = new MainActivity();
    String state;
    EditText etTitle,etContent;
    Button button,button_notice_back;
    Context context;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.notice_write);
        button_notice_back=findViewById(R.id.button_notice_back);
        button_notice_back.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent32 = new Intent(getApplicationContext(),MainActivity.class);
                startActivity(intent32);
            }
        });
        //activity = (MainActivity) getApplicationContext();

        etTitle=findViewById(R.id.etTitle);
        etContent=findViewById(R.id.etContent);
        button = findViewById(R.id.button);

        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                fragBackIdx = 6;
                AlertDialog.Builder builder = new AlertDialog.Builder(NoticeWrite.this);
                builder.setTitle("공지추가");
                builder.setMessage("정말 추가하시겠습니까ㅏ?");
                builder.setPositiveButton("확인", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        //Intent intent = new Intent(getApplicationContext(), NoticeWrite1.class);
                        String title = etTitle.getText().toString().trim();
                        String content= etContent.getText().toString().trim();
                        String name ="관리자";
                        long now = System.currentTimeMillis();
                        Date date = new Date(now);
                        SimpleDateFormat sdfNow = new SimpleDateFormat("yy.MM.dd");
                        String today = sdfNow.format(date);

                        NoticeAdd_ATask notice_add_aTask = new NoticeAdd_ATask(title, name, content,today);
                        try {
                            state = notice_add_aTask.execute().get().trim();
                        } catch (ExecutionException e) {
                            e.getMessage();
                        } catch (InterruptedException e) {
                            e.getMessage();
                        }
                        etTitle.setText(""); etContent.setText("");
                        Intent noticeIntent = new Intent(getApplicationContext(), NoticeList.class);
                        startActivity(noticeIntent);
                        //Toast.makeText(activity, "공지글 작성완료", Toast.LENGTH_SHORT).show();
                    }

                });
                builder.setNegativeButton("취소", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        //Toast.makeText(getApplicationContext(), "취소되었습니다.", Toast.LENGTH_SHORT).show();
                        etTitle.setText(""); etContent.setText("");
                    }
                });
                builder.create().show();



            }


        });





    }



}
