package com.example.ateam_project.Fragment;

import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.ateam_project.Adapter.SubMusicViewAdapter;
import com.example.ateam_project.R;
import com.example.ateam_project.WordItmeDataDTO;

import java.io.IOException;

public class Music_fragment extends Fragment {

    MediaPlayer mediaPlayer;
    private static final String TAG = "fragment2";

    private Button btnStart;
    private Button btnStop;

    private String myUrl = "http://";// 접속 URL (내장HTML의 경우 왼쪽과 같이 쓰고 아니면 걍 URL)
    String url = "";


    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.sub_fragment_music, container, false);
        Button btnStart = view.findViewById(R.id.play_btn);
        Button btnStop = view.findViewById(R.id.stop_btn);


        /*Button btnPause = findViewById(R.id.button3);
        Button btnRestart = findViewById(R.id.button4);*/

        RecyclerView recyclerView = view.findViewById(R.id.recycler_music);
        LinearLayoutManager layoutManager = new LinearLayoutManager(getContext(), RecyclerView.VERTICAL, false);
        recyclerView.setLayoutManager(layoutManager);

        SubMusicViewAdapter adapter = new SubMusicViewAdapter(getContext());
        adapter.addItem(new WordItmeDataDTO("물 흐르는 소리", "https://dl.bgmstore.net/download/KtgYR/mp3/0%20%EB%AC%BC%20%ED%9D%90%EB%A5%B4%EB%8A%94%20%EC%86%8C%EB%A6%AC"));
        adapter.addItem(new WordItmeDataDTO("비내리는 소리", "https://dl.bgmstore.net/download/YXGvV/mp3/%EB%B9%84%20%EB%9D%BC%EC%9D%B4%EC%96%B8"));
        adapter.addItem(new WordItmeDataDTO("동굴 안 소리", "https://dl.bgmstore.net/download/MY7N1/mp3/%EB%AC%BC%EB%B0%A9%EC%9A%B8%20%EB%96%A8%EC%96%B4%EC%A7%80%EB%8A%94%20%EC%86%8C%EB%A6%AC%20%EB%8F%99%EA%B5%B4%20%EB%B0%B1%EC%83%89%EC%86%8C%EC%9D%8C"));
        adapter.addItem(new WordItmeDataDTO("파도 소리", "https://dl.bgmstore.net/download/VnnEU/mp3/%ED%8C%8C%EB%8F%84%EC%86%8C%EB%A6%AC"));
        adapter.addItem(new WordItmeDataDTO("열대우림안 숲 소리","https://dl.bgmstore.net/download/NkukL/mp3/%EB%A7%88%EB%85%B8%ED%95%98%ED%92%80"));
        adapter.addItem(new WordItmeDataDTO("캠프파이어 소리", "https://dl.bgmstore.net/download/A6pBe/mp3/%EC%BA%A0%ED%94%84%ED%8C%8C%EC%9D%B4%EC%96%B4"));
        adapter.addItem(new WordItmeDataDTO("호수에서 노 젓는 소리", "https://dl.bgmstore.net/download/AX1vb/mp3/0%20%ED%98%B8%EC%88%98%EC%97%90%EC%84%9C%20%EB%85%B8%EC%A0%93%EA%B8%B0"));
        adapter.addItem(new WordItmeDataDTO("도시 속 소리", "https://dl.bgmstore.net/download/rcnKF/mp3/0%20%ED%8F%89%ED%99%94%EB%A1%9C%EC%9A%B4%20%EC%8B%9C%EB%82%B4"));
        adapter.addItem(new WordItmeDataDTO("눈내리는 바람 소리", "https://dl.bgmstore.net/download/r1nyX/mp3/%EC%84%A4%EC%82%B0"));
        adapter.addItem(new WordItmeDataDTO("바다 바람 소리", "https://bgmstore.net/view/5bb0d128352039d22709f7fa/%EB%82%A8%EA%B7%B9%20%EB%AC%BC%ED%9D%90%EB%A5%B4%EB%8A%94%20%EC%86%8C%EB%A6%AC%20-%20%ED%8C%8C%EB%8F%84,%20%EC%B6%94%EC%9B%80,%20%EB%B0%94%EB%9E%8C,%20%EB%B9%99%ED%95%98,%20%EC%96%BC%EC%9D%8C,%20%EC%97%AC%EC%9C%A0,%20%EC%9E%90%EC%97%B0,"));
        adapter.addItem(new WordItmeDataDTO("폭풍, 비, 천둥 소리", "https://bgmstore.net/view/5bb0d128352039d22709f14b/%EB%B2%88%EA%B0%9C%EC%86%8C%EB%A6%AC,%20%EB%B9%84%EC%86%8C%EB%A6%AC,%20%EB%B9%84%EB%82%B4%EB%A6%AC%EB%8A%94%20%EC%86%8C%EB%A6%AC,%20%EB%B8%8C%EA%B8%88,%20%EC%9E%A5%EB%A7%88,%20%EC%A7%91%EC%A4%91,%20%EB%B0%B1%EC%83%89%EC%86%8C%EC%9D%8C,%20%EB%B6%80%EC%B9%A8%EA%B0%9C,%20%EB%B9%84,%20%EC%B2%9C%EB%91%A5,"));
        adapter.addItem(new WordItmeDataDTO("지붕에 비내리는 소리", "https://dl.bgmstore.net/download/5fFad/mp3/%EC%96%91%EC%B2%A0%EC%A7%80%EB%B6%95"));




        recyclerView.setAdapter(adapter);

        /*Intent intent = getActivity().getIntent();
        if (intent != null) {
            url = "http://" + intent.getStringExtra("url");
            Log.d(TAG, "onCreate: " + intent.getStringExtra("url"));
            playAudio("http://" +intent.getStringExtra("url"));


        };*/

        return view;
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


    @Override
    public void onStop() {
        super.onStop();
        killMediaPlayer();
    }
}
