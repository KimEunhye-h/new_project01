package com.example.ateam_project.Adapter;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.ateam_project.ATask.Subject_Delete;
import com.example.ateam_project.DTO.SubjectDTO;
import com.example.ateam_project.MainActivity;
import com.example.ateam_project.OnSubjectItemClickListener;
import com.example.ateam_project.R;
import com.example.ateam_project.Sub_StopwarchMain_Activity;

import java.util.ArrayList;
import java.util.concurrent.ExecutionException;

import static com.example.ateam_project.MainActivity.selItem;

public class SubjectAdapter extends RecyclerView.Adapter<SubjectAdapter.ViewHolder> implements OnSubjectItemClickListener {
    Context context;//★
    ArrayList<SubjectDTO> list = new ArrayList<>();//★
    public SubjectAdapter(){}
    OnSubjectItemClickListener listener;
    ImageButton btnmore;
    String state;

    private static final String TAG = "SubjectAdapter";
    public SubjectAdapter(Context context,ArrayList<SubjectDTO> list){
        this.context = context;
        this.list = list;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(parent.getContext());
        View itemView = inflater.inflate(R.layout.subject_item, parent, false);

        return new ViewHolder(itemView,this);
    }

    @Override
    public void onBindViewHolder(@NonNull final ViewHolder holder, final int position) {
        SubjectDTO item = list.get(position);
//        if(item.getSubject().equals("123123")){
//            Log.d(TAG, "서브젝트다: ");
//        }else{
//
//        }
        holder.setItem(item);


        //리사이클러뷰 삭제시
        holder.deletebtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                selItem = list.get(position);
                if(holder.parentLayout != null){
                    //팝업띄우기
                    AlertDialog.Builder builder = new AlertDialog.Builder(context);
                    builder.setTitle("과목삭제");
                    builder.setMessage("정말 삭제하시겠습니까?");
                    builder.setPositiveButton("확인", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            Subject_Delete listDelete = new Subject_Delete(selItem.getName(),selItem.getSubject());
                            Log.d(TAG, "selname : "+selItem.getName()+"slesubject : "+selItem.getSubject());
                            try {
                                state=listDelete.execute().get().trim();

                            } catch (ExecutionException e) {
                                e.printStackTrace();
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }

                            if(state.equals("1")){
                                Toast.makeText(context, "삭제성공 !!!", Toast.LENGTH_SHORT).show();
                                Log.d("main:joinact", "삭제성공 !!!");

                                Intent intent = new Intent(context, MainActivity.class);
                                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_SINGLE_TOP);
                                context.startActivity(intent);

                            }else{
                                Toast.makeText(context, "삭제실패 !!!", Toast.LENGTH_SHORT).show();
                                Log.d("main:joinact", "삭제실패 !!!");
                            }
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

        //메인에서 재생버튼 클릭시 서브메인 스톱워치로 이동하기
        holder.subjectStart.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                selItem = list.get(position);
                if(holder.parentLayout != null){
                    Intent subjectIntent = new Intent(context, Sub_StopwarchMain_Activity.class);
                    subjectIntent.putExtra("subjectName",selItem.getSubject());

                    context.startActivity(subjectIntent);
                }
            }
        });
    }

    @Override
    public int getItemCount() {
        return list.size();
    }

    public void addItem(SubjectDTO item){
        list.add(item);
    }
    // 리사이클러뷰 내용 모두 지우기
    public void removeAllItem(){
        list.clear();
    }

    // 특정 인덱스 항목 가져오기
    public SubjectDTO getItem(int position) {
        return list.get(position);
    }

    // 특정 인덱스 항목 셋팅하기
    public void setItem(int position, SubjectDTO item){
        list.set(position, item);
    }

    // arrayList 통째로 셋팅하기
    public void setItems(ArrayList<SubjectDTO> arrayList){
        this.list = arrayList;
    }


    public void setOnItemClickListener(OnSubjectItemClickListener listener){
        this.listener = listener;
    }

    @Override
    public void onItemClick(ViewHolder holderm, View view, int position) {
        if(listener != null){
            listener.onItemClick(holderm, view, position);
        }
    }


    public class ViewHolder extends RecyclerView.ViewHolder {
        public LinearLayout parentLayout;
        public TextView subject,subjectTime;
        public ImageView subjectStart;
        public ImageButton deletebtn;


        public ViewHolder(@NonNull View itemView,final OnSubjectItemClickListener listener) {
            super(itemView);
            parentLayout=itemView.findViewById(R.id.parentLayout);
            subject=itemView.findViewById(R.id.subject);
            subjectTime=itemView.findViewById(R.id.subjectTime);
            subjectStart=itemView.findViewById(R.id.subjectStart);
            deletebtn=itemView.findViewById(R.id.deletebtn);
            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    int position = getAdapterPosition();
                    if(listener != null){
                        listener.onItemClick(ViewHolder.this, view, position);
                    }
                }
            });

        }
        public void setItem(SubjectDTO item){
            subject.setText(item.getSubject());
            subjectTime.setText(item.getSubjectTime());
            subjectStart.setImageResource(R.drawable.time_play_btn_round);
        }
    }

}
