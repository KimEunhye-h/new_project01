package com.example.ateam_project;

import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.ateam_project.ATask.Friend_List_ATask;
import com.example.ateam_project.Adapter.FriendListAdapter;
import com.example.ateam_project.DTO.FriendListDTO;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

import java.util.ArrayList;
import java.util.concurrent.ExecutionException;

import static com.example.ateam_project.Common.CommonMethod.isNetworkConnected;
import static com.example.ateam_project.LoginActivity.loginDTO;


public class FriendList extends AppCompatActivity  {
	// 나중에 합칠때 수정
	public static FriendListDTO loginDto = null;
	public static FriendListDTO selItem = null;

	RecyclerView recyclerView;
	Friend_List_ATask friend_list_aTask;
	ArrayList<FriendListDTO> subjectList;
	FriendListAdapter adapter;
	String name;
	Button friendList_back_btn;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.friend_list);
		friendList_back_btn=findViewById(R.id.friendList_back_btn);
		friendList_back_btn.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View v) {
				Intent intent = new Intent(getApplicationContext(),MainActivity.class);
				startActivity(intent);
			}
		});

		checkDangerousPermissions();
		name=loginDTO.getName();


		subjectList =  new ArrayList<>();

		Toolbar toolbar = findViewById(R.id.toolbar);
		setSupportActionBar(toolbar);

		FloatingActionButton fab = findViewById(R.id.fab);
		fab.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View view) {
				Intent intent = new Intent(getApplicationContext(), FriendAdd.class);
				startActivity(intent);
			}
		});
		recyclerView = findViewById(R.id.recyclerView);

		LinearLayoutManager layoutManager = new LinearLayoutManager(this,
				RecyclerView.VERTICAL, false);
		recyclerView.setLayoutManager(layoutManager);

		adapter = new FriendListAdapter(this, subjectList);

		recyclerView.setAdapter(adapter);

		if(isNetworkConnected(this) == true){
			friend_list_aTask = new Friend_List_ATask(subjectList, adapter, name);
			try {
				friend_list_aTask.execute().get();
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
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.friend_list_menu, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();

		//noinspection SimplifiableIfStatement
		if (id == R.id.action_settings) {
			return true;
		}

		return super.onOptionsItemSelected(item);
	}



	private void checkDangerousPermissions() {
		String[] permissions = {
				Manifest.permission.INTERNET,
				Manifest.permission.ACCESS_NETWORK_STATE,
				Manifest.permission.ACCESS_WIFI_STATE,
				Manifest.permission.READ_EXTERNAL_STORAGE,
				Manifest.permission.WRITE_EXTERNAL_STORAGE,
				Manifest.permission.CAMERA
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
	@Override
	protected void onNewIntent(Intent intent) {
		super.onNewIntent(intent);
		friend_list_aTask = new Friend_List_ATask(subjectList, adapter, name);
		try {
			friend_list_aTask.execute().get();
		} catch (ExecutionException e) {
			e.printStackTrace();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void onBackPressed() {
		Intent intent = new Intent(getApplication(), MainActivity.class);
		intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_SINGLE_TOP);
		getApplication().startActivity(intent);

		super.onBackPressed();
	}
}
