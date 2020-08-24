package com.example.ateam_project;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import com.example.ateam_project.DTO.StudyCalSubDTO;

public class StudyCalSubDay extends AppCompatActivity {
    private static final String TAG = "main:Sub1Activity";

    TextView tvSub1,tvSub1_1;
    TextView tvSub2;
    Intent intent;
    Button studycal_day_back_btn;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.studycalsubday);
        studycal_day_back_btn=findViewById(R.id.studycal_day_back_btn);
        studycal_day_back_btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent10 = new Intent(getApplicationContext(), StudyCalMain.class);
                startActivity(intent10);
            }
        });
        tvSub1_1=findViewById(R.id.tvSub1_1);
        tvSub1=findViewById(R.id.tvSub1);
        tvSub2=findViewById(R.id.tvSub2);
        String date = "";

        //데이터 받는곳
        //데이터 받는곳
        if(getIntent() != null){
            tvSub1.setText("");
            tvSub2.setText("");
            intent= getIntent();


            date = intent.getStringExtra("date");
            tvSub1_1.append(date);
            String total=intent.getStringExtra("total");

            if(total.equals("::")){
                tvSub1.append("00:00:00");
            }else{
                tvSub1.append(total);
            }



            int count = intent.getIntExtra("count", 0);
            Log.d(TAG, "dayList: " + count);

            StudyCalSubDTO[] studyCalDTOS = new StudyCalSubDTO[count];
            for(int i=0; i<count; i++){
                String dayList = "dayList" + i;
                String daList = intent.getStringExtra(dayList);
                tvSub2.append(daList+"\n");
            }

            if(count == 0){
                String dayList = null;
                tvSub2.append("00:00:00");
            }

        }
    }
}
