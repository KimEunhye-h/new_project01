package com.example.ateam_project;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class HelpPage extends AppCompatActivity {
    TextView helpText;
    Button help_back;
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.help_page);
        help_back=findViewById(R.id.help_back);
        help_back.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getApplicationContext(),MainActivity.class);
                startActivity(intent);
            }
        });
        helpText=findViewById(R.id.help_text);
        helpText.setText("경쟁자들이 공부중이라면 잠이 오겠습니까?\n" +
                "친구들과 함께라면 힘이나지 않을까요?\n" +
                "\n" +
                "수능,공시,고시 등\n" +
                "길고긴 마라톤\n" +
                "Study Partner에서 함께 공부하세요!\n" +
                "\n" +
                "경쟁자를 보고 자극받고\n" +
                "친구들을 보고 힘을 얻자\n" +
                "\n" +
                "\n" +
                "최고의 공부 효율을 위한 당신의 공부 파트너, Study Partner!\n" +
                "\n" +
                "*Study Partner는 스터디 스탑워치 입니다.\n" +
                "\n" +
                "\n" +
                "\n" +
                "1. 스탑워치\n" +
                "과목별 스탑워치는 기본\n" +
                "측정중 다른앱 사용 금지를 통한\n" +
                "핸드폰 만지기 방지!\n" +
                "\n" +
                "\n" +
                "2. 스터디 플래너\n" +
                "스탑워치로 측정된 시간이 과복별로\n" +
                "스터디 플래너를 자동으로 만들어줍니다.\n" +
                "\n" +
                "\n" +
                "3. 통계 - 달력\n" +
                "일/주/월별 통계는 기본\n" +
                "공부하면 달력에 표시!!\n" +
                "\n" +
                "\n" +
                "4. 친구 추가\n" +
                "친구 추가로 열심히 공부하는 자신을 자랑!\n" +
                "경쟁심으로 인한 집중력 향상\n" +
                "\n" +
                "\n" +
                "5. D-days\n" +
                "집중이 안되시나요? 열정이 식었나요?\n" +
                "자신의 남은 D-day를 보고 다시 열정 up!!\n");

    }
}
