package com.example.ateam_project.Adapter;

import android.content.Context;
import android.media.MediaPlayer;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.ateam_project.R;
import com.example.ateam_project.WordItmeDataDTO;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class SubMusicViewAdapter extends RecyclerView.Adapter<SubMusicViewAdapter.ViewHolder>{
    private static final String TAG = "MainViewAdapter2";
    Context context;
    List<WordItmeDataDTO> list = new ArrayList<>();

    private WordItmeDataDTO mListener = null ;
    MediaPlayer mediaPlayer;

    Button btnStart;
    Button btnStop;
    TextView textView;

    public SubMusicViewAdapter(Context context) {
        this.context = context;
    }


    @NonNull
    @Override
    public SubMusicViewAdapter.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        final View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.sub_list_music_item, parent, false);
        ViewHolder holder = new ViewHolder(view);

        btnStart = view.findViewById(R.id.play_btn);
        btnStop = view.findViewById(R.id.stop_btn);
        textView = view.findViewById(R.id.Music_title);

        return holder;
    }


    @Override
    public void onBindViewHolder(@NonNull final SubMusicViewAdapter.ViewHolder holder, int position) {
        final WordItmeDataDTO item = getItem(position);
        int itemposition = position;
        holder.meaning.setText(list.get(itemposition).meaning);
        holder.title.setText(list.get(itemposition).word);

        //노래 재생
        holder.btnStart.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                //노래 재생
                /*Intent intent = new Intent(context, webView.class);
                intent.putExtra("url",String.valueOf(item.getMeaning()));*/
                Log.d(TAG, "음악 사이트주소: "+String.valueOf(item.getMeaning()));
                playAudio(item.getMeaning());


                /*context.startActivity(intent);*/
                /*playAudio1(R.raw.m01);*/
            }
        });

        //노래 정지
        holder.btnStop.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(mediaPlayer != null){
                    mediaPlayer.stop();
                }
            }
        });

    }



    /*public void Musicplay (View v, int position){
        WordItmeData item = getItem(position);
        switch (v.getId()){
            case R.id.button2:
                switch (cur_play){
                    case mplay:
                        playAudio(item.getMeaning());
                        break;
                    case mstop:
                        mediaPlayer.stop();
                        break;
                }
        }
    }*/

    @Override
    public int getItemCount() {
        return list.size();
    }

    public void addItem(WordItmeDataDTO item){
        list.add(item);
    }

    public WordItmeDataDTO getItem(int position){
        return list.get(position);
    }


    public class  ViewHolder extends RecyclerView.ViewHolder{
        public TextView title;
        public TextView meaning;
        public Button btnStart;
        public Button btnStop;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            title = itemView.findViewById(R.id.Music_title);
            meaning = itemView.findViewById(R.id.meaning);
            btnStart = itemView.findViewById(R.id.play_btn);
            btnStop = itemView.findViewById(R.id.stop_btn);
        }
    }


    private void playAudio(String audio_url){
        killMediaPlayer();

        try {
            mediaPlayer = new MediaPlayer();
            mediaPlayer.setDataSource(audio_url);
            mediaPlayer.prepare();
            mediaPlayer.start();
        } catch (IOException e) {
            e.getMessage();
        }
    }

    private  void killMediaPlayer(){
        if(mediaPlayer != null){
            mediaPlayer.release();
        }
    }

    private void playAudio1(int resId){
        killMediaPlayer();

        try {
            mediaPlayer = new MediaPlayer();
            mediaPlayer = mediaPlayer.create(context, resId);
            mediaPlayer.start();
        } catch (Exception e) {
            e.getMessage();
        }
    }

    /*@Override
    public void onStop() {
        super.onStop();
        killMediaPlayer();
    }*/
}