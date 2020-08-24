package com.example.ateam_project;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

import com.example.ateam_project.ATask.MyPageMemberDelete;

import java.util.concurrent.ExecutionException;

import static com.example.ateam_project.LoginActivity.loginDTO;

public class MyPageMain extends AppCompatActivity {
    String namein;
    String state;
    Button myPage_back_btn;
    private static final String TAG = "Fragment2";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mypagemain);
        myPage_back_btn=findViewById(R.id.myPage_back_btn);
        myPage_back_btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });



        namein=loginDTO.getName();


        //하위버튼
        Button button1 =  findViewById(R.id.button1);
        Button button2 =  findViewById(R.id.button2);
        Button button3 =  findViewById(R.id.button3);

        //클릭 이벤트
        //닉네임변경
        button1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //getFragmentManager().beginTransaction().replace(R.id.container, new MyPageNickName()).commit();
                Intent intentMypageName = new Intent(getApplicationContext(), MyPageNickName.class);
                startActivity(intentMypageName);
            }
        });
        //카테고리변경
        button2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //getFragmentManager().beginTransaction().replace(R.id.container, new MyPageJob()).commit();
                Intent intentMypageJob = new Intent(getApplicationContext(), MyPageJob.class);
                startActivity(intentMypageJob);

            }
        });
        //탈퇴
        button3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                AlertDialog.Builder builder = new AlertDialog.Builder(MyPageMain.this);

                builder.setTitle("탈퇴").setMessage("정말 탈퇴하시겠습니까?");

                builder.setPositiveButton("OK", new DialogInterface.OnClickListener(){
                    @Override
                    public void onClick(DialogInterface dialog, int id)
                    {
                        String name= namein;
                        //탈퇴처리
                        MyPageMemberDelete myPageMemberDelete = new MyPageMemberDelete(name);

                        try {
                            myPageMemberDelete.execute().get();
                        } catch (ExecutionException e) {
                            e.printStackTrace();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }

                        Intent intent11 = new Intent(getApplicationContext(),LoginActivity.class);
                        startActivity(intent11);
                    }
                });

                builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener(){
                    @Override
                    public void onClick(DialogInterface dialog, int id)
                    {


                    }
                });
                AlertDialog alertDialog = builder.create();
                alertDialog.show();



            }

        });





    }
}
