package com.example.ateam_project;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import com.example.ateam_project.ATask.Subject_Add_ATask;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ExecutionException;

import static com.example.ateam_project.LoginActivity.loginDTO;

public class Subject_Add extends AppCompatActivity {
    String state,subjectTime;
    Toolbar toolbar;
    TextView sub_add;
    EditText subjectEdit;
    String subject;
    String name;
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.subject_add);
        name=loginDTO.getName();


        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        subjectEdit = findViewById(R.id.subjectEdit);
        sub_add = findViewById(R.id.sub_add);
        //추가버튼누를때
        sub_add.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getApplicationContext(),MainActivity.class);
                subject = subjectEdit.getText().toString();
                subject=subject.trim();
//0000000000000000000000000000000000000000000000000000

                if(subject== ""){
                    Toast.makeText(Subject_Add.this, "과목을 입력하세요", Toast.LENGTH_SHORT).show();
                }else{

                    AlertDialog.Builder builder = new AlertDialog.Builder(Subject_Add.this);
                    builder.setTitle("과목추가");
                    builder.setMessage("정말 '"+subject+ "' 를 추가하시겠습니까?");
                    builder.setPositiveButton("확인", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            //날짜
                            long now = System.currentTimeMillis();
                            Date date = new Date(now);
                            SimpleDateFormat sdfNow = new SimpleDateFormat("yy/MM/dd");
                            String formatDate = sdfNow.format(date);
                            //시간
                            //subjectTime = findViewById(R.id.subjectTime);
                            subjectTime="00:00:00";

                            //ATask를 생성하여 값을 리턴받기
                            Subject_Add_ATask subject_add_aTask = new Subject_Add_ATask(name,subject, subjectTime, formatDate);
                            try {
                                state = subject_add_aTask.execute().get().trim();
                            } catch (ExecutionException e) {
                                e.getMessage();
                            } catch (InterruptedException e) {
                                e.getMessage();
                            }

                            if(state.equals("1")){
                                Toast.makeText(Subject_Add.this, "삽입성공 !!!", Toast.LENGTH_SHORT).show();
                                Log.d("main:joinact", "삽입성공 !!!");
                                finish();
                            }else{
                                Toast.makeText(Subject_Add.this, "삽입실패 !!!", Toast.LENGTH_SHORT).show();
                                Log.d("main:joinact", "삽입실패 !!!");
                                finish();
                            }
                            finish();
                        }
                    });
                    builder.setNegativeButton("취소", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            Toast.makeText(getApplicationContext(), "취소되었습니다.", Toast.LENGTH_SHORT).show();
                        }
                    });
                    builder.create().show();
                }



                //0000000000000000000000000000000000000000000000000000

//                //날짜
//                long now = System.currentTimeMillis();
//                Date date = new Date(now);
//                SimpleDateFormat sdfNow = new SimpleDateFormat("yyyy.MM.dd");
//                String formatDate = sdfNow.format(date);
//                //시간
//                //subjectTime = findViewById(R.id.subjectTime);
//                subjectTime="00:00:00";
//
//                //ATask를 생성하여 값을 리턴받기
//                Subject_Add_ATask subject_add_aTask = new Subject_Add_ATask(subject, subjectTime, formatDate);
//                try {
//                    state = subject_add_aTask.execute().get().trim();
//                } catch (ExecutionException e) {
//                    e.getMessage();
//                } catch (InterruptedException e) {
//                    e.getMessage();
//                }
//
//                if(state.equals("1")){
//                    Toast.makeText(Subject_Add.this, "삽입성공 !!!", Toast.LENGTH_SHORT).show();
//                    Log.d("main:joinact", "삽입성공 !!!");
//                    finish();
//                }else{
//                    Toast.makeText(Subject_Add.this, "삽입실패 !!!", Toast.LENGTH_SHORT).show();
//                    Log.d("main:joinact", "삽입실패 !!!");
//                    finish();
//                }
//
//
//                finish();
                //메인페이지 리스트에 뿌려줄때 테스트한것
//                if (!(subject_name.getBytes().length <=0)){
//                    intent.putExtra("subject_name",subject_name);
//                    startActivity(intent);
//                    finish();
//                }else{
//                    Toast.makeText(Subject_Add.this, "과목이름을 입력하세요", Toast.LENGTH_SHORT).show();
//                }

            }
        });
    }

    //과목추가 Back버튼
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()){
            case android.R.id.home:{ //toolbar의 back키 눌렀을 때 동작
                finish();
                return true;
            }
        }
        return super.onOptionsItemSelected(item);
    }
}
