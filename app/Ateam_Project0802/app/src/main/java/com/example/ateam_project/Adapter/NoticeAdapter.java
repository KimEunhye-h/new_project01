package com.example.ateam_project.Adapter;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.ateam_project.DTO.NoticeDTO;
import com.example.ateam_project.NoticeListDetail;
import com.example.ateam_project.R;

import java.util.ArrayList;

import static com.example.ateam_project.NoticeList.noticeselItem;

public class NoticeAdapter extends RecyclerView.Adapter<NoticeAdapter.ViewHolder> {
    Context context;
    ArrayList<NoticeDTO> list = new ArrayList<>();
    private static final String TAG = "main11";
    String state2;

    public NoticeAdapter(Context context, ArrayList<NoticeDTO> items) {
        this.context = context;
        this.list = items;
    }

    @NonNull
    @Override
    public NoticeAdapter.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(parent.getContext());
        View itemView = inflater.inflate(R.layout.noticelist_item, parent, false);



        return new ViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull final ViewHolder holder,final int position) {
        NoticeDTO item = list.get(position);
        holder.setItem(item);
       /* holder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                selItem1 = list.get(position);
                String title = selItem1.getTitle();
                String content = selItem1.getContent();
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                builder.setTitle(title).setMessage(content);
                builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener(){
                    @Override
                    public void onClick(DialogInterface dialog, int id)
                    {
                        Toast.makeText(context, "Cancel Click", Toast.LENGTH_SHORT).show();

                    }
                });
                AlertDialog alertDialog = builder.create();
                alertDialog.show();
            }
        });*/
        holder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                noticeselItem = list.get(position);
                String title = noticeselItem.getTitle();
                String content = noticeselItem.getContent();

                Intent intent = new Intent(v.getContext(), NoticeListDetail.class);
                intent.setFlags(intent.FLAG_ACTIVITY_NEW_TASK);
                intent.putExtra("title",title);
                intent.putExtra("content",content);
                v.getContext().startActivity(intent);

            }
        });



    }

    public int getItemCount() {
        return list.size();

    }

    public void addItem(NoticeDTO item){
        list.add(item);
    }





    public static class ViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        TextView tvTitle, tvToday;
        LinearLayout parentLayout;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);

            tvTitle = itemView.findViewById(R.id.tvTitle);
            tvToday = itemView.findViewById(R.id.tvToday);
            parentLayout = itemView.findViewById(R.id.parentLayout);




        }

        public void setItem(NoticeDTO item){
            tvTitle.setText(item.getTitle());
            tvToday.setText(item.getToday());

            Log.d(TAG, "setItem: "+tvTitle+","+tvToday);
        }

        @Override
        public void onClick(View v) {

        }
    }
}
