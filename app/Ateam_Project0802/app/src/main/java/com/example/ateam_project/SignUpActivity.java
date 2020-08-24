package com.example.ateam_project;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.example.ateam_project.ATask.SignUpInsert_ATask;

import java.util.concurrent.ExecutionException;

public class SignUpActivity extends AppCompatActivity {

    private static final String TAG = "JoinActivity";
    String state;

    EditText etEmail, etPw, etName, etJob;
    Button btnJoin, btnCancel;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.signup);
        Log.d(TAG, "onCreate: 회원가입화면");
        etEmail = findViewById(R.id.etEmail);
        etPw = findViewById(R.id.etPw);
        etName = findViewById(R.id.etName);
        etJob = findViewById(R.id.etJob);
        btnJoin = findViewById(R.id.btnJoin);
        btnCancel = findViewById(R.id.btnCancel);

        btnJoin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(SignUpActivity.this, "가입버튼누름", Toast.LENGTH_SHORT).show();
                String email = etEmail.getText().toString();
                String pw = etPw.getText().toString();
                String name = etName.getText().toString();
                String job =  etJob.getText().toString();


                SignUpInsert_ATask signUpInsertATask = new SignUpInsert_ATask(email, name, pw, job);
                try {
                    state = signUpInsertATask.execute().get().trim();
                    Log.d("main:joinact0 : ", state);
                } catch (ExecutionException e) {
                    e.printStackTrace();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }

                if(state.equals("1")){
                    Toast.makeText(SignUpActivity.this, "삽입성공 !!!", Toast.LENGTH_SHORT).show();
                    Log.d("main:joinact", "삽입성공 !!!");
                    finish();
                }else{
                    Toast.makeText(SignUpActivity.this, "삽입실패 !!!", Toast.LENGTH_SHORT).show();
                    Log.d("main:joinact", "삽입실패 !!!");
                    finish();
                }
            }
        });

        btnCancel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });


    }
}