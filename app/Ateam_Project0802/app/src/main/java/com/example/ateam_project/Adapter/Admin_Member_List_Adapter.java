package com.example.ateam_project.Adapter;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.ateam_project.ATask.Admin_Member_List_Delete;
import com.example.ateam_project.Admin_Member_List;
import com.example.ateam_project.DTO.Admin_Member_ListDTO;
import com.example.ateam_project.R;

import java.util.ArrayList;
import java.util.concurrent.ExecutionException;

import static com.example.ateam_project.Admin_Member_List.admin_member_list_selItem;


public class Admin_Member_List_Adapter extends RecyclerView.Adapter<Admin_Member_List_Adapter.ItemViewHolder> {
    
    Context context;
    ArrayList<Admin_Member_ListDTO> list;
    String state;

    private static final String TAG = "main11";
    
    public Admin_Member_List_Adapter(Context context, ArrayList<Admin_Member_ListDTO>list){
        this.context = context;
        this.list = list;
    }

    @NonNull
    @Override
    public ItemViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(parent.getContext());
        View itemview = inflater.inflate(R.layout.admin_memberlist_item, parent, false);

        return new ItemViewHolder(itemview);
    }

    @Override
    public void onBindViewHolder(@NonNull final ItemViewHolder holder, final int position) {
        Admin_Member_ListDTO dto = list.get(position);
        holder.setItem(dto);

        //리사이클러뷰삭제
        holder.del.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                admin_member_list_selItem = list.get(position);
                if(holder.parentLayout != null){
                    //팝업
                    AlertDialog.Builder builder = new AlertDialog.Builder(context);
                    builder.setTitle("회원 정보 삭제");
                    builder.setMessage("정말 삭제하시겠습니까?");
                    builder.setPositiveButton("확인", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            Admin_Member_List_Delete adminMemberListDelete = new Admin_Member_List_Delete(admin_member_list_selItem.getName());

                            try {
                                state = adminMemberListDelete.execute().get().trim();
                            } catch (ExecutionException e) {
                                e.printStackTrace();
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                            if(state.equals("1")){
                                Intent intent = new Intent(context, Admin_Member_List.class);
                                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_SINGLE_TOP | Intent.FLAG_ACTIVITY_CLEAR_TASK);
                                context.startActivity(intent);
                            }
                        }
                    });
                    builder.setNegativeButton("취소", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            Toast.makeText(context, "취소하셨습니다.", Toast.LENGTH_SHORT).show();
                        }
                    });
                    builder.create().show();
                }
            }
        });

    }


    @Override
    public int getItemCount() {
        return list.size();
    }

    public void removeAllItem(){
        list.clear();
    }

    public void addItem(Admin_Member_ListDTO dto){
        list.add(dto);
    }

    public static class ItemViewHolder extends RecyclerView.ViewHolder {
        public TextView textName;
        public TextView textEmail;
        public TextView textjoin;
        public LinearLayout parentLayout;
        public Button del;

        public ItemViewHolder(@NonNull View itemView) {
            super(itemView);
            parentLayout = itemView.findViewById(R.id.parentLayout);
            textEmail = itemView.findViewById(R.id.textEmail);
            textjoin = itemView.findViewById(R.id.textjoin);
            textName = itemView.findViewById(R.id.textName);
            del = itemView.findViewById(R.id.del);
        }

        public void setItem(Admin_Member_ListDTO dto) {
            textName.setText(dto.getName());
            textEmail.setText(dto.getEmail());
            textjoin.setText(dto.getJoin_date());
        }
    }

}
