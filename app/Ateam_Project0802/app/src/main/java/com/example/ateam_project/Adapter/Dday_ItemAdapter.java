package com.example.ateam_project.Adapter;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.ateam_project.ATask.Dday_ListDelete;
import com.example.ateam_project.DTO.Dday_ItemDTO;
import com.example.ateam_project.D_day_RecyclerViewMain;
import com.example.ateam_project.R;

import java.util.ArrayList;
import java.util.concurrent.ExecutionException;

import static com.example.ateam_project.D_day_RecyclerViewMain.selItem1;

public class Dday_ItemAdapter extends RecyclerView.Adapter<Dday_ItemAdapter.ItemViewHolder> {
    private static final String TAG = "main:ItemAdapter";
    public static Context ddaycontext;
    Context mcontext;
    ArrayList<Dday_ItemDTO> arrayList;
    String state;
    public Dday_ItemDTO selItem2;
    public Dday_ItemAdapter(){};
    public Dday_ItemAdapter(Context mcontext, ArrayList<Dday_ItemDTO> arrayList){
        this.mcontext = mcontext;
        this.arrayList = arrayList;
    }

    @NonNull
    @Override
    public ItemViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(parent.getContext());
        View itemView = inflater.inflate(R.layout.dday_item_view, parent, false);

        return new ItemViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull final Dday_ItemAdapter.ItemViewHolder holder, final int position) {
        Dday_ItemDTO ddayItemDTO = arrayList.get(position);
        holder.setItem(ddayItemDTO);

        //메인에 d_day값 보내기
//        selItem2=arrayList.get(0);
//        selItem2.setTitle(arrayList.get(0).getTitle());
//        selItem2.setDiff_day(arrayList.get(0).getDiff_day());
//
//        String title = selItem2.getTitle();
//        String di_day = selItem2.getDiff_day();
//        Intent intent = new Intent(mcontext, MainActivity.class);
//        // intent.setFlags(intent.FLAG_ACTIVITY_NEW_TASK);
//        intent.putExtra("title",title);
//        intent.putExtra("di_day",di_day);
        //mcontext.startActivity(intent);


        //리사이클러뷰삭제
        holder.more.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                selItem1 = arrayList.get(position);
                if(holder.parentLayout != null){
                    //팝업
                    AlertDialog.Builder builder = new AlertDialog.Builder(mcontext);
                    builder.setTitle("D-day 삭제");
                    builder.setMessage("정말 삭제하시겠습니까?");
                    builder.setPositiveButton("확인", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {

                            Dday_ListDelete ddayListDelete = new Dday_ListDelete(selItem1.getTitle());
                            ///////////////////////////

                            try {
                                state = ddayListDelete.execute().get().trim();
                                Log.d(TAG, "onClick: state =>" + state);
                            } catch (ExecutionException e) {
                                e.printStackTrace();
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                            if(state.equals("1")){
                                //Toast.makeText(mcontext, "삭제성공", Toast.LENGTH_SHORT).show();
                                Intent intent = new Intent(mcontext, D_day_RecyclerViewMain.class);
                               //삭제 후 화면 갱신
                                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_SINGLE_TOP | Intent.FLAG_ACTIVITY_CLEAR_TASK);
                                mcontext.startActivity(intent);
                               ////추가
                            }else {
                                Intent intent = new Intent(mcontext, D_day_RecyclerViewMain.class);
                                //삭제 후 화면 갱신
                                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_SINGLE_TOP | Intent.FLAG_ACTIVITY_CLEAR_TASK);
                                mcontext.startActivity(intent);
                               //Toast.makeText(mcontext, "삭제실패", Toast.LENGTH_SHORT).show();
                            }
                        }
                    });
                    builder.setNegativeButton("취소", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            Toast.makeText(mcontext, "취소되었습니다.", Toast.LENGTH_SHORT).show();
                        }
                    });
                    builder.create().show();

                }
            }


        });
    }




    @Override
    public int getItemCount() {
        return arrayList.size();
    }

    //리스트 추가하기
    public void addDTO(Dday_ItemDTO dto){
        arrayList.add(dto);
    }

    //리사이클러뷰 내용 지우기
    public void removeAllItem() {
        arrayList.clear();
    }

    public static class ItemViewHolder extends RecyclerView.ViewHolder {
        public LinearLayout parentLayout;
        public TextView textTitle;
        public TextView textDate;
        public TextView d_day, diff_day;
        public Button more;

        public ItemViewHolder(@NonNull View itemView) {
            super(itemView);
            parentLayout = itemView.findViewById(R.id.parentLayout);
            textTitle = itemView.findViewById(R.id.textTitle);
            textDate = itemView.findViewById(R.id.textDate);
            d_day = itemView.findViewById(R.id.d_day);
            diff_day = itemView.findViewById(R.id.diff_day);
            more = itemView.findViewById(R.id.more);
        }

        public void setItem(Dday_ItemDTO item){
            textTitle.setText(item.getTitle());
            textDate.setText(item.getPickerdate());
            d_day.setText(item.getD_day());
            diff_day.setText("D - " + item.getDiff_day());
        }
    }
}
