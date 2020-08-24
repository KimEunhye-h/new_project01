package com.example.ateam_project.Adapter;


import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.ateam_project.ATask.Friend_List_Delete_ATask;
import com.example.ateam_project.DTO.FriendListDTO;
import com.example.ateam_project.FriendList;
import com.example.ateam_project.R;

import java.util.ArrayList;
import java.util.concurrent.ExecutionException;

import static com.example.ateam_project.FriendList.selItem;
import static com.example.ateam_project.LoginActivity.loginDTO;

public class FriendListAdapter extends RecyclerView.Adapter<FriendListAdapter.ViewHolder> {
private static final String TAG = "MainListViewBtnAdapter";

    /*public interface ListBtnClickListener {
        void onListBtnClick(int position) ;
    }*/
    String state;
    Context context;
    ArrayList<FriendListDTO> items;
    String name;
    public FriendListAdapter(Context context, ArrayList<FriendListDTO> items) {
        this.context = context;
        this.items = items;
    }

    @NonNull
    @Override
    public FriendListAdapter.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(parent.getContext());
        View itemView = inflater.inflate(R.layout.friend_list_item, parent, false);


        return new ViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull final FriendListAdapter.ViewHolder holder, final int position) {
        FriendListDTO item = items.get(position);
        holder.setItem(item);
        name=loginDTO.getName();
        //리사이클러뷰 삭제시
        holder.button1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                selItem = items.get(position);
                if(holder.textView != null){
                    //팝업띄우기
                    AlertDialog.Builder builder = new AlertDialog.Builder(context);
                    builder.setTitle("과목삭제");
                    builder.setMessage("정말 삭제하시겠습니까?");
                    builder.setPositiveButton("확인", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            Friend_List_Delete_ATask listDelete = new Friend_List_Delete_ATask(selItem.getName(),name);
                            try {
                                state=listDelete.execute().get().trim();
                            } catch (ExecutionException e) {
                                e.printStackTrace();
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                            Toast.makeText(context, "삭제성공", Toast.LENGTH_SHORT).show();
                            Intent intent = new Intent(context, FriendList.class);
                            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_SINGLE_TOP);
                            context.startActivity(intent);
                        }
                    });
                    builder.setNegativeButton("취소", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            Toast.makeText(context, "취소되었습니다.", Toast.LENGTH_SHORT).show();
                        }
                    });
                    builder.create().show();
                }else {
                    Toast.makeText(context, "항목 선택을 해 주세요(항목선택)",
                            Toast.LENGTH_SHORT).show();
                }

            }
        });//삭제 종료


    }

    @Override
    public int getItemCount() {
        { return items.size();   }
    }

    public void addItem(FriendListDTO item){
        items.add(item);
    }
    // 특정 인덱스 항목 셋팅하기
    public void setItem(int position, FriendListDTO item){
        items.set(position, item);
    }


    // 리사이클러뷰 내용 모두 지우기
    public void removeAllItem(){
        items.clear();
    }

    public static class ViewHolder extends RecyclerView.ViewHolder{
        public TextView textView,textView1;
        public Button button1;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);

            textView= itemView.findViewById(R.id.textView);
            textView1 = itemView.findViewById(R.id.textView1);
            button1 = itemView.findViewById(R.id.button1);



        }

        public void setItem(FriendListDTO item){
            textView.setText(item.getName());
            textView1.setText(item.getTime());
        }
    }


}