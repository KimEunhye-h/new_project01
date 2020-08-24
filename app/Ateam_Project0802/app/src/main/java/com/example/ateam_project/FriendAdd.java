package com.example.ateam_project;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.ateam_project.ATask.Friend_Add_ATask;
import com.example.ateam_project.Adapter.FriendAddAdapter;
import com.example.ateam_project.DTO.FriendAddDTO;
import com.google.android.material.tabs.TabLayout;

import java.util.ArrayList;
import java.util.concurrent.ExecutionException;

import static com.example.ateam_project.Common.CommonMethod.isNetworkConnected;
import static com.example.ateam_project.LoginActivity.loginDTO;

//fgfgfg90090909090
public class FriendAdd extends AppCompatActivity implements  TextWatcher{

    public static FriendAddDTO selItem1 = null;
    Friend_Add_ATask friendAdd_aTask;
    public static RecyclerView friend_recyclerView;
    TextView accessTime;
    EditText editText;
    FriendAddAdapter adapter;
    ArrayList<FriendAddDTO> dtos;
    TabLayout tabs;
    String name;
    Button friendAdd_back_btn;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.friend_add);
        friendAdd_back_btn=findViewById(R.id.friendAdd_back_btn);
        friendAdd_back_btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getApplicationContext(),FriendList.class);
                startActivity(intent);
            }
        });
        name=loginDTO.getName();


        friend_recyclerView = findViewById(R.id.recyclerView);
        editText = findViewById(R.id.edittext);
        accessTime = findViewById(R.id.accessTime);
        editText.addTextChangedListener(this);

        tabs = findViewById(R.id.tabs);
        tabs.addTab(tabs.newTab().setText("추가할 친구목록"));
        tabs.setOnTabSelectedListener(new TabLayout.OnTabSelectedListener() {
            @Override
            public void onTabSelected(TabLayout.Tab tab) {

            }
            @Override
            public void onTabUnselected(TabLayout.Tab tab) {

            }

            @Override
            public void onTabReselected(TabLayout.Tab tab) {

            }

        });

        dtos  =  new ArrayList<>();






        adapter = new FriendAddAdapter(getApplicationContext(),dtos);
        LinearLayoutManager layoutManager = new LinearLayoutManager(this,
                RecyclerView.VERTICAL, false);
        friend_recyclerView.setLayoutManager(layoutManager);

        friend_recyclerView.setAdapter(adapter);

//        adapter.addItem(new AccessDTO("open","택배",accessTime,R.drawable.singer1));
//        adapter.addItem(new AccessDTO("close","택배",accessTime,R.drawable.singer1));
//        adapter.addItem(new AccessDTO("open","배달",accessTime,R.drawable.singer1));

        if(isNetworkConnected(this) == true){
            friendAdd_aTask = new Friend_Add_ATask(dtos, adapter, name);
            try {
                friendAdd_aTask.execute().get();

            } catch (ExecutionException e) {
                e.printStackTrace();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }else {
            Toast.makeText(this, "인터넷이 연결되어 있지 않습니다.",
                    Toast.LENGTH_SHORT).show();
        }
        adapter.notifyDataSetChanged();



    }

    @Override
    public void beforeTextChanged(CharSequence s, int start, int count, int after) {

    }

    @Override
    public void onTextChanged(CharSequence charSequence, int start, int before, int count) {
        adapter.getFilter().filter(charSequence);
        Toast.makeText(this, "눌렸다", Toast.LENGTH_SHORT).show();
    }

    @Override
    public void afterTextChanged(Editable s) {

    }
    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        friendAdd_aTask = new Friend_Add_ATask(dtos, adapter, name);
        try {
            friendAdd_aTask.execute().get();
        } catch (ExecutionException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
    @Override
    public void onBackPressed() {
        Intent intent = new Intent(getApplication(), FriendList.class);
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_SINGLE_TOP);
        getApplication().startActivity(intent);
        super.onBackPressed();
    }

}
