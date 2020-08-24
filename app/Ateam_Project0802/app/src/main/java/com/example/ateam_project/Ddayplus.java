package com.example.ateam_project;

import android.app.DatePickerDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.example.ateam_project.ATask.Dday_ListInsert;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.ExecutionException;

import static com.example.ateam_project.LoginActivity.loginDTO;

public class Ddayplus extends AppCompatActivity {
    String date = "", title = "";
    String state,name;
    EditText etTitle;
    Button ddayAdd_back_btn;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dday_ddayplus);
        ddayAdd_back_btn=findViewById(R.id.ddayAdd_back_btn);
        ddayAdd_back_btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intentLogOut = new Intent(getApplicationContext(), D_day_RecyclerViewMain.class);
                startActivity(intentLogOut);
            }
        });
        name=loginDTO.getName().trim();


        etTitle = findViewById(R.id.editText);

        // 날짜를 출력하는 텍스트뷰에 오늘 날짜 설정.
        TextView tv = findViewById(R.id.editNewKidBirth);
        Calendar cal = Calendar.getInstance();
        tv.setText(cal.get(Calendar.YEAR) + "년 " + (cal.get(Calendar.MONTH) + 1) + "월 " + cal.get(Calendar.DATE) + "일 ");
        date = cal.get(Calendar.YEAR) + "년 " + (cal.get(Calendar.MONTH) + 1) + "월 " + cal.get(Calendar.DATE) + "일 ";
    }

    DatePickerDialog.OnDateSetListener mDateSetListener =
            new DatePickerDialog.OnDateSetListener() {
                @Override
                public void onDateSet(DatePicker datePicker, int yy, int mm, int dd) {
                    // Date Picker에서 선택한 날짜를 TextView에 설정
                    TextView tv = findViewById(R.id.editNewKidBirth);
                    tv.setText(String.format("%d년 %d월 %d일", yy, mm + 1, dd));

                    date = String.format("%d년 %d월 %d일", yy, mm + 1, dd);
                }
            };

    public void mOnClick_DatePick(View view) {
        // DATE Picker가 처음 떴을 때, 오늘 날짜가 보이도록 설정.
        Calendar cal = Calendar.getInstance();
        new DatePickerDialog(this, mDateSetListener, cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), cal.get(Calendar.DATE)).show();

        Button ddayadd;
        ddayadd = findViewById(R.id.ddayadd);

        ddayadd.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                title = etTitle.getText().toString();
                if(title.length() == 0){
                    Toast.makeText(Ddayplus.this, "제목을 입력하세요", Toast.LENGTH_SHORT).show();
                    return;
                }
                //날짜
                long now = System.currentTimeMillis();
                Date date1 = new Date(now);
                SimpleDateFormat sdfNow = new SimpleDateFormat("yyyy년 MM월 dd일");
                String formatDate = sdfNow.format(date1);
                String today=formatDate;

                //DB연결부분
                Dday_ListInsert insert = new Dday_ListInsert(name,title,date,today);
                try {
                    state=insert.execute().get().trim();
                } catch (ExecutionException e) {
                    e.printStackTrace();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }


                Intent intent = new Intent(getApplicationContext(), D_day_RecyclerViewMain.class);
                intent.putExtra("date", date);
                intent.putExtra("title", title);
                startActivityForResult(intent, 1001);


            }
        });


    }
}
