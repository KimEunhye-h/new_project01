package com.example.ateam_project.Adapter;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.ateam_project.R;
import com.example.ateam_project.Sub_webView;
import com.example.ateam_project.WordItmeDataDTO;

import java.util.ArrayList;
import java.util.List;

public class SubWebViewAdapter extends RecyclerView.Adapter<SubWebViewAdapter.ViewHolder>{

    private static final String TAG = "MainViewAdapter";

    Context context;
    List<WordItmeDataDTO> list = new ArrayList<>();
    Bundle bundle;

    public SubWebViewAdapter(Context context) {
        this.context = context;
    }
    private WordItmeDataDTO mListener = null ;
    /*private final int TYPE_HEADER = 0;
    private final int TYPE_ITEM = 1;*/

    public static final int VIEW_TYPE_A = 0;
    public static final int VIEW_TYPE_B = 1;


    @NonNull
    @Override
    public SubWebViewAdapter.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        final View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.sub_list_dic_item, parent, false);
        ViewHolder holder = new ViewHolder(view);

        return holder;

    }

    //사이트 주소를 가져와서 웹뷰 띄우는 버튼
    @Override
    public void onBindViewHolder(@NonNull SubWebViewAdapter.ViewHolder holder, final int position) {
        final WordItmeDataDTO item = getItem(position);
        final int itemposition = position;

        holder.meaningText.setText(list.get(itemposition).meaning);
        holder.wordText.setText(list.get(itemposition).word);

        holder.wordText.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(context, Sub_webView.class);
                intent.putExtra("url",String.valueOf(item.getMeaning()));
                Log.d(TAG, "사이트주소: "+String.valueOf(item.getMeaning()));

                context.startActivity(intent);
            }
        });

    }


    @Override
    public int getItemCount() {
        return list.size() ;
    }

    public void addItem(WordItmeDataDTO item){
        list.add(item);
    }

    public WordItmeDataDTO getItem(int position){
        return list.get(position);
    }


    public class  ViewHolder extends RecyclerView.ViewHolder{
        public TextView wordText;
        public TextView meaningText;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            wordText = itemView.findViewById(R.id.wordText);
            meaningText = itemView.findViewById(R.id.meaningText);
        }

        void onBind(WordItmeDataDTO data){
            wordText.setText(data.getWord());
            meaningText.setText(data.getMeaning());
        }
    }



}