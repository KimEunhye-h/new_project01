package com.example.ateam_project;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import com.example.ateam_project.ATask.ChangeJobUpdate;

import java.util.concurrent.ExecutionException;

import static com.example.ateam_project.LoginActivity.loginDTO;

public class MyPageJob extends AppCompatActivity {
    String jobin, namein;
    TextView textView;

    private static final String TAG = "Fragment2_sub2";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mypagejob);

        jobin=loginDTO.getJob();
        namein=loginDTO.getName();

        Button button102 = findViewById(R.id.button102);
        textView  = findViewById(R.id.textView);
        textView.setText(jobin);

        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                AlertDialog.Builder dlg = new AlertDialog.Builder(MyPageJob.this);
                dlg.setTitle("직업 재설정"); //제목
                final String[] versionArray = new String[] {"초/중/고","대학(원)","고시","취업준비생","기타"};
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
                        textView.setText(str);
                        String job = textView.getText().toString().trim();
                        String name= namein;
                        Log.d(TAG, "확인: " + job + ", " + name);

                        ChangeJobUpdate changeJobUpdate = new ChangeJobUpdate(job, name);
                        try {
                            changeJobUpdate.execute().get();
                        } catch (ExecutionException e) {
                            e.printStackTrace();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                        //토스트 메시지
                        //Toast.makeText(getActivity(),"확인.",Toast.LENGTH_SHORT).show();
                    }
                });
                dlg.show();
                //변경하기 버튼누르면 뒤로가기

            }
        });
        button102.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });

    }
}

