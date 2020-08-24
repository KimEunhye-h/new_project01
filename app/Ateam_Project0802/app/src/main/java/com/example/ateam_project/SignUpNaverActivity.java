package com.example.ateam_project;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.Nullable;

import com.example.ateam_project.ATask.SignUpCheck_ATask;
import com.example.ateam_project.ATask.SignUpInsert_ATask;

import java.util.concurrent.ExecutionException;

import static com.example.ateam_project.LoginActivity.naverEmail;

public class SignUpNaverActivity extends Activity {
    String name_check;
    SignUpCheck_ATask signUpCheck_aTask;
    private static final String TAG = "SignUpNaverActivity";
    String state;
    TextView etEmail;
    EditText etName;
    TextView etJob;
    Button btnJoin, btnCancel,button,btnChange;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.login_naver);

        btnChange = findViewById(R.id.btnChange);
        etEmail = findViewById(R.id.etEmail);
        etName = findViewById(R.id.etName);
        etJob = findViewById(R.id.etJob);
        btnJoin = findViewById(R.id.btnJoin);
        btnCancel = findViewById(R.id.btnCancel);
        button = findViewById(R.id.button);
        btnJoin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String email = naverEmail;

                String name = etName.getText().toString();
                String pw ="0000";
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
                    Log.d("main:joinact", "네이버 아이디가 정상 등록되었습니다 !!! 다시 로그인해주세요");
                    Intent intent1 = new Intent(getApplicationContext(), LoginActivity.class);
                    startActivity(intent1);
                }else{
                    Log.d("main:joinact", "사용중인 이메일입니다.");
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
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                name_check = etName.getText().toString();
                signUpCheck_aTask = new SignUpCheck_ATask(name_check);
                try {
                    state = signUpCheck_aTask.execute().get().trim();
                } catch (ExecutionException e) {
                    e.getMessage();
                } catch (InterruptedException e) {
                    e.getMessage();
                }

                if(state.equals("1")||name_check.equals("")){
                    new AlertDialog.Builder(SignUpNaverActivity.this) // TestActivity 부분에는 현재 Activity의 이름 입력.
                            .setMessage("이미 사용중인 닉네임입니다.")     // 제목 부분 (직접 작성)
                            .setPositiveButton("확인", new DialogInterface.OnClickListener() {      // 버튼1 (직접 작성)
                                public void onClick(DialogInterface dialog, int which){
                                    Toast.makeText(getApplicationContext(), "확인 누름", Toast.LENGTH_SHORT).show(); // 실행할 코드
                                }
                            })
                            .show();
                }else{
                    new AlertDialog.Builder(SignUpNaverActivity.this) // TestActivity 부분에는 현재 Activity의 이름 입력.
                            .setMessage("사용 가능한 닉네임 입니다.")     // 제목 부분 (직접 작성)
                            .setPositiveButton("확인", new DialogInterface.OnClickListener() {      // 버튼1 (직접 작성)
                                public void onClick(DialogInterface dialog, int which){
                                    Toast.makeText(getApplicationContext(), "확인 누름", Toast.LENGTH_SHORT).show(); // 실행할 코드
                                }
                            })
                            .show();
                }



            }
        });


        //직업변경
        etJob.setText("기타");
        btnChange.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                AlertDialog.Builder dlg = new AlertDialog.Builder(SignUpNaverActivity.this);
                dlg.setTitle("직업 재설정"); //제목
                final String[] versionArray = new String[] {"초/중/고","대학(원)","공무원","전문직","기타"};
                final boolean[] checkArray = new boolean[]{false,false,false,false,false};
                dlg.setIcon(R.drawable.ic_launcher_foreground); // 아이콘 설정
                //한개만 클릭할수 있음
                dlg.setMultiChoiceItems(versionArray, checkArray, new DialogInterface.OnMultiChoiceClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which, boolean isChecked){
                        checkArray[which] = isChecked;
                    }
                });
//                확인버튼 클릭시 동작
                dlg.setPositiveButton("확인",new DialogInterface.OnClickListener(){
                    public void onClick(DialogInterface dialog, int which) {
                        //job을 선택한걸 가져와야함
                        String str = "";
                        for (int i = 0; i < checkArray.length; i++) {
                            if (checkArray[i]) {
                                str = str + versionArray[i];
                            }
                        }
                        etJob.setText(str);
                        String job = etJob.getText().toString().trim();

                    }
                });
                dlg.show();
                //변경하기 버튼누르면 뒤로가기
            }
        });


    }
}