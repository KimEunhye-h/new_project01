package com.example.ateam_project;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import com.example.ateam_project.DTO.WeekTotalDTO;

public class StudyCalSubWeek extends AppCompatActivity {
    private static final String TAG = "Sub2Activity";
    Button studycal_week_back_btn;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.studycalsubweek);
        studycal_week_back_btn=findViewById(R.id.studycal_week_back_btn);
        studycal_week_back_btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent101 = new Intent(getApplicationContext(), StudyCalMain.class);
                startActivity(intent101);
            }
        });
         TextView textView9, weekTotal, weekToSub, textView6;
         textView9=findViewById(R.id.textView9);
         weekTotal=findViewById(R.id.weekTotal);
         weekToSub=findViewById(R.id.weekToSub);
         textView6=findViewById(R.id.textView6);

        //데이터 받는곳
        Intent intent;
        intent= getIntent();
        int week = intent.getIntExtra("week",0);
        textView9.setText(week +"주차 공부한 시간");
        String total=intent.getStringExtra("total");
        String weekBest=intent.getStringExtra("weekBest");
        weekTotal.setText(total);
        textView6.setText(weekBest);

        int count = intent.getIntExtra("count", 0);
        Log.d(TAG, "onCreate111: " + count);

        WeekTotalDTO[] weekTotalDTOS = new WeekTotalDTO[count];
        for(int i=0; i<count; i++){
            String weekList = "weekList" + i;
            String weList = intent.getStringExtra(weekList);
            weekToSub.append(weList+"\n");
        }

        if(count == 0){
            String totalList = null;
            weekToSub.append("공부한 시간이 없구나!!! 공부 좀 해라");
        }

    }
}
