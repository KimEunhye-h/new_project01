package com.example.ateam_project;

import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import com.example.ateam_project.ATask.StudyCalSelectMonthBest;
import com.example.ateam_project.ATask.StudyCalSelectMonthSubTotal;
import com.example.ateam_project.ATask.StudyCalSelectMonthTotal;
import com.example.ateam_project.ATask.StudyCalSelectWeekBest;
import com.example.ateam_project.ATask.StudyCalSelectWeekSubTotal;
import com.example.ateam_project.ATask.StudyCalSelectWeekTotal;
import com.example.ateam_project.ATask.StudyTimeSelectDay;
import com.example.ateam_project.ATask.StudyTimeSelectInit;
import com.example.ateam_project.ATask.StudyTimeSelectSubDay;
import com.example.ateam_project.DTO.MonthTotalDTO;
import com.example.ateam_project.DTO.StudyCalDTO;
import com.example.ateam_project.DTO.StudyCalSubDTO;
import com.example.ateam_project.DTO.WeekTotalDTO;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.concurrent.ExecutionException;

import sun.bob.mcalendarview.MCalendarView;
import sun.bob.mcalendarview.MarkStyle;
import sun.bob.mcalendarview.listeners.OnDateClickListener;
import sun.bob.mcalendarview.vo.DateData;

import static com.example.ateam_project.LoginActivity.loginDTO;

public class StudyCalMain extends AppCompatActivity {
    private static final String TAG = "MainActivity";

    //mCalendarView calendarView;
    StudyCalDTO dto;
    MCalendarView calendarView;
    ArrayList<StudyCalDTO> list;
    ArrayList<StudyCalSubDTO> dayList;
    String nameday=loginDTO.getName();
    String newDate;
    String type = "name";
    String total;
    ArrayList<MonthTotalDTO> totalList;
    ArrayList<WeekTotalDTO> weekList;
    String name=loginDTO.getName();
    //String name="김은혜";


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.studycalmain);

        checkDangerousPermissions();

        calendarView = findViewById(R.id.calendarView);

        Button button;
        button = findViewById(R.id.cal_back);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent5 = new Intent(v.getContext(), MainActivity.class);
                startActivity(intent5);
            }
        });

        //날짜 눌렀을때 하루 공부시간
        calendarView.setOnDateClickListener(new OnDateClickListener() {
            @Override
            public void onDateClick(View view, DateData date) {
                type = "day";
                //String.format("%d-%d", date.year, date.month)
                newDate = String.format("%02d년%02d월%02d일", date.getYear(), date.getMonth(), date.getDay());
                Intent intent = new Intent(StudyCalMain.this, StudyCalSubDay.class);
                intent.putExtra("date", newDate);

                nameday= newDate.replace("년","/")
                        .replace("월","/").replace("일", "");
                //하루 과목별 공부시간
                dayList = new ArrayList<>();
                final StudyTimeSelectDay studyTimeSelect = new StudyTimeSelectDay(name, nameday.substring(2,10), dayList);
                try {
                    studyTimeSelect.execute().get();
                } catch (ExecutionException e) {
                    e.printStackTrace();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                Log.d("main:total2 : ", "" + dayList.size());

                intent.putExtra("count", dayList.size());

                StudyCalSubDTO[] studyCalDTOS = new StudyCalSubDTO[dayList.size()];
                for (int i = 0; i < dayList.size(); i++) {
                    String subject = dayList.get(i).getSubject();
                    String total = dayList.get(i).getTotal();

                    studyCalDTOS[i] = new StudyCalSubDTO(subject, total);
                    String dayList = "dayList" + i;

                    intent.putExtra(dayList , studyCalDTOS[i].getSubject() + " " + studyCalDTOS[i].getTotal());
                }//과목별 공부시간

                //하루 총 공부시간 조회
                String today= nameday.substring(2,10);
                StudyTimeSelectSubDay studyTimeSelect2 = new StudyTimeSelectSubDay(name, today);
                try {
                    total =studyTimeSelect2.execute().get().trim();
                    Log.d("main:total : ", total);
                } catch (ExecutionException e) {
                    e.printStackTrace();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                intent.putExtra("total", total);

                startActivity(intent);
            }
        });//onClick

        // 달력 초기화
        list = new ArrayList<>();
        StudyTimeSelectInit studyTimeSelectInit = new StudyTimeSelectInit(type, list, nameday);
        try {
            studyTimeSelectInit.execute().get();
        } catch (ExecutionException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        final Calendar calendar = Calendar.getInstance();
// for your date format use
       final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
// set a string to format your current date
        final String curDate = sdf.format(calendar.getTime());
// print the date in your log cat
        Log.d(TAG, "onCreate: listsize => " + list.size());

        //특정날짜에 동그라미 표시
      /*  final ArrayList<DateData> dates=new ArrayList<>();
        dates.add(new DateData(2020,06,26));
        dates.add(new DateData(2020,06,27));*/
        for(int i=0;i<list.size();i++) {
            String subject=list.get(i).getSubject();
            String time=list.get(i).getTime();
            String name=list.get(i).getName();
            String today= "20" + list.get(i).getToday();
            Log.d(TAG, "onCreate: "+today);

            int year = Integer.parseInt(today.split("/")[0]);
            int month = Integer.parseInt(today.split("/")[1]);
            int day = Integer.parseInt(today.split("/")[2]);

            calendarView.markDate(new DateData(year, month,day)
                    .setMarkStyle(new MarkStyle(MarkStyle.BACKGROUND, Color.LTGRAY)));

            //list.add(new DateData(2020,06,26));
        }

        /*calendarView.markDate(new DateData(2020, 7, 1)
                .setMarkStyle(new MarkStyle(MarkStyle.DOT, Color.RED)));
        calendarView.markDate(new DateData(2020, 7, 2)
                .setMarkStyle(new MarkStyle(MarkStyle.BACKGROUND, Color.RED)));*/

        //한달중 최고기록
        final TextView recordTv;
        recordTv=findViewById(R.id.recordTv);
        int month = calendar.get(calendar.MONTH) + 1;
        String getMonth = "0" + month;
        StudyCalSelectMonthBest studyCalSelectMonthBest = new StudyCalSelectMonthBest(name, getMonth);
        try {
            total = studyCalSelectMonthBest.execute().get().trim();
            Log.d("main:maxTotal : ", total);
        } catch (ExecutionException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        recordTv.setText(total.substring(0,2)+"시간 "+total.substring(3,5)+"분 "+
                total.substring(6,8)+"초");

       //주간기록보기
        Button weekBtn;
        weekBtn=findViewById(R.id.weekBtn);
        weekBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent= new Intent(StudyCalMain.this, StudyCalSubWeek.class);
                //일주일을 구해서 보내야함
                int week=calendar.get(calendar.WEEK_OF_MONTH);
                intent.putExtra("week", week);
                //일주일 총 공부시간 조회
                String getWeek=calendar.get(calendar.WEEK_OF_MONTH)-1+"";
                StudyCalSelectWeekTotal studyCalSelectWeekTotal = new StudyCalSelectWeekTotal(name, getWeek);
                try {
                    total = studyCalSelectWeekTotal.execute().get().trim();
                    Log.d("main:weekTotal : ", total);
                } catch (ExecutionException e) {
                    e.printStackTrace();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                intent.putExtra("total", total);

                //일주일 최고기록
                StudyCalSelectWeekBest studyCalSelectWeekBest = new StudyCalSelectWeekBest(name, getWeek);
                try {
                    total = studyCalSelectWeekBest.execute().get().trim();
                    Log.d("main:weekmaxTotal : ", total);
                } catch (ExecutionException e) {
                    e.printStackTrace();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                intent.putExtra("weekBest", total);


                //일주일 과목별 총 공부시간 조회
                weekList = new ArrayList<>();
                StudyCalSelectWeekSubTotal studyCalSelectWeekSubTotal = new StudyCalSelectWeekSubTotal(name, getWeek);
                try {
                    weekList = studyCalSelectWeekSubTotal.execute().get();
                } catch (ExecutionException e) {
                    e.printStackTrace();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                Log.d("main:total2 : ", "" + weekList.size());

                intent.putExtra("count", weekList.size());

                WeekTotalDTO[] weekTotalDTOS = new WeekTotalDTO[weekList.size()];
                for (int i = 0; i < weekList.size(); i++) {
                    String subject = weekList.get(i).getSubject();
                    String total = weekList.get(i).getTotal();


                    weekTotalDTOS[i] = new WeekTotalDTO(subject, total);
                    String weekList = "weekList" + i;


                    intent.putExtra(weekList, weekTotalDTOS[i].getSubject() + " " + weekTotalDTOS[i].getTotal());

                }

                startActivity(intent);
            }
        });

        //월간기록보기
        Button monBtn;
        monBtn=findViewById(R.id.monBtn);
        monBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v ) {
                Intent intent = new Intent(StudyCalMain.this, StudyCalSubMonth.class);
                //달을 구해서 보내야함
                int month = calendar.get(calendar.MONTH) + 1;
                int month_day = calendar.get(calendar.DAY_OF_MONTH);
                intent.putExtra("month", month);
                intent.putExtra("month_day", month_day);

                //한달 총 공부시간 조회
                String getMonth = "0" + month;
                StudyCalSelectMonthTotal studyCalSelectMonthTotal = new StudyCalSelectMonthTotal(name, getMonth);
                try {
                    total = studyCalSelectMonthTotal.execute().get().trim();
                    Log.d("main:total2 : ", total);
                } catch (ExecutionException e) {
                    e.printStackTrace();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                intent.putExtra("total", total);

              /*  한달 평균 공부시간
                String avgMonth="0"+Integer.parseInt(total.substring(0,2))/calendar.get(calendar.DATE)
                        +":0"+Integer.parseInt(total.substring(3,5))/calendar.get(calendar.DATE)
                        +":"+Integer.parseInt(total.substring(6,8))
                        +"0";
                */
                //한달최고기록
                intent.putExtra("maxMonth", recordTv.getText());

                //한달 과목별 총 공부시간 조회
                totalList = new ArrayList<>();
                StudyCalSelectMonthSubTotal studyCalSelectMonthSubTotal = new StudyCalSelectMonthSubTotal(name, getMonth);
                try {
                    totalList = studyCalSelectMonthSubTotal.execute().get();
                } catch (ExecutionException e) {
                    e.printStackTrace();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                Log.d("main:total2 : ", "" + totalList.size());

                intent.putExtra("count", totalList.size());

                MonthTotalDTO[] monthTotalDTOS = new MonthTotalDTO[totalList.size()];
                for (int i = 0; i < totalList.size(); i++) {
                    String subject = totalList.get(i).getSubject();
                    String total = totalList.get(i).getTotal();


                    monthTotalDTOS[i] = new MonthTotalDTO(subject, total);
                    String totalList = "totalList" + i;


                    intent.putExtra(totalList, monthTotalDTOS[i].getSubject() + " " + monthTotalDTOS[i].getTotal());

                }

                startActivity(intent);
            }

        });




    }

    //권한
   private void checkDangerousPermissions() {
        String[] permissions = {
                Manifest.permission.INTERNET,
                Manifest.permission.ACCESS_NETWORK_STATE,
                Manifest.permission.ACCESS_WIFI_STATE
        };

        int permissionCheck = PackageManager.PERMISSION_GRANTED;
        for (int i = 0; i < permissions.length; i++) {
            permissionCheck = ContextCompat.checkSelfPermission(this, permissions[i]);
            if (permissionCheck == PackageManager.PERMISSION_DENIED) {
                break;
            }
        }

        if (permissionCheck == PackageManager.PERMISSION_GRANTED) {
            Toast.makeText(this, "권한 있음", Toast.LENGTH_LONG).show();
        } else {
            Toast.makeText(this, "권한 없음", Toast.LENGTH_LONG).show();

            if (ActivityCompat.shouldShowRequestPermissionRationale(this, permissions[0])) {
                Toast.makeText(this, "권한 설명 필요함.", Toast.LENGTH_LONG).show();
            } else {
                ActivityCompat.requestPermissions(this, permissions, 1);
            }
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        if (requestCode == 1) {
            for (int i = 0; i < permissions.length; i++) {
                if (grantResults[i] == PackageManager.PERMISSION_GRANTED) {
                    Toast.makeText(this, permissions[i] + " 권한이 승인됨.", Toast.LENGTH_LONG).show();
                } else {
                    Toast.makeText(this, permissions[i] + " 권한이 승인되지 않음.", Toast.LENGTH_LONG).show();
                }
            }
        }
    }
  

}
