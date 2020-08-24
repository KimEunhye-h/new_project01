package com.example.ateam_project;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.example.ateam_project.ATask.ChangeNameUpdate;

import java.util.concurrent.ExecutionException;

import static com.example.ateam_project.LoginActivity.loginDTO;

public class MyPageNickName extends AppCompatActivity {

    //로그인된 이름
    String namein;
    String state="";

    EditText editText;

    //ChangeNameSelectDTO dto;

    private static final String TAG = "Fragment2_sub1";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mypagenickname);
        namein=loginDTO.getName();
        //dto =new ChangeNameSelectDTO(namein);

        Button button101 = findViewById(R.id.button101);
        editText = findViewById(R.id.editText);

        //닉넴조회해서 가져오기
        //Log.d(TAG, "onCreateView: "+dto.getName());
        /*ChangeNameSelect changeNameSelect = new ChangeNameSelect(dto.getName());
        try {
            changeNameSelect.execute().get();
        } catch (ExecutionException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }*/

        editText.setText(namein);

        //변경버튼을 누르면
        button101.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                String oldName = namein;
                String name= editText.getText().toString().trim();
                Log.d(TAG, "onClick2: " + name + ", " + oldName);

                ChangeNameUpdate changeNameUpdate = new ChangeNameUpdate(name, oldName);
                try {
                    state=changeNameUpdate.execute().get().trim();
                } catch (ExecutionException e) {
                    e.printStackTrace();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                if(state.equals("1")){
                    Toast.makeText(MyPageNickName.this, "수정성공", Toast.LENGTH_SHORT).show();
                    Log.d(TAG, "수정성공 !!!");
                    //   finish();
                }else{
                    Toast.makeText(MyPageNickName.this, "중복입니다 !!!", Toast.LENGTH_SHORT).show();
                    Log.d(TAG, "수정실패 !!!");
                    //  finish();
                }


                finish();
                //getFragmentManager().beginTransaction().replace(R.id.container, new MyPageMain()).commit();

/*
                if(state.equals("1")){
                    Toast.makeText(getActivity(), "수정성공", Toast.LENGTH_SHORT).show();
                    Log.d(TAG, "수정성공 !!!");
                    //   finish();
                }else{
                    Toast.makeText(getActivity(), "수정실패 !!!", Toast.LENGTH_SHORT).show();
                    Log.d(TAG, "수정실패 !!!");
                    //  finish();
                }*/
            }
        });
       /* public void btnCancelClicked(View view){
            finish();
        }*/

    }
}

