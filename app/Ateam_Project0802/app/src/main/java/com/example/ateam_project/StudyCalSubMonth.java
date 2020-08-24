package com.example.ateam_project;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import com.example.ateam_project.DTO.MonthTotalDTO;

public class StudyCalSubMonth extends AppCompatActivity {
    private static final String TAG = "main:Sub3Activity";
    
    TextView monthTv;
    TextView textView4;
    TextView textView8;
    TextView avgTV;
    Button studycal_month_back_btn;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.studycalsubmonth);
        studycal_month_back_btn=findViewById(R.id.studycal_month_back_btn);
        monthTv=findViewById(R.id.monthTv);
        textView4=findViewById(R.id.textView4);
        textView8=findViewById(R.id.textView8);
        avgTV=findViewById(R.id.avgTV);
        studycal_month_back_btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent10 = new Intent(getApplicationContext(), StudyCalMain.class);
                startActivity(intent10);
            }
        });
        //데이터 받는곳
        Intent intent;
        intent= getIntent();
        int month = intent.getIntExtra("month",0);
        String maxMonth = intent.getStringExtra("maxMonth");
        String total=intent.getStringExtra("total");
        int month_day = intent.getIntExtra("month_day",0);
        monthTv.setText(month +"월 공부한 시간");
        avgTV.setText(maxMonth.substring(0,2)+":"+maxMonth.substring(5,7)+":"+maxMonth.substring(9,11));
        textView4.setText(total);

        int count = intent.getIntExtra("count", 0);
        Log.d(TAG, "onCreate: " + count);
        
        MonthTotalDTO[] monthTotalDTOS = new MonthTotalDTO[count];
        for(int i=0; i<count; i++){
            String totalList = "totalList" + i;
            String tolist = intent.getStringExtra(totalList);
            textView8.append(tolist+"\n");
        }

        if(count == 0){
            String totalList = null;
            textView8.append("공부한 시간이 없구나!!! 공부 좀 해라");
        }

    }
}
