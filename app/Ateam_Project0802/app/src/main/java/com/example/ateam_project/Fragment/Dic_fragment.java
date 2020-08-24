package com.example.ateam_project.Fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.ateam_project.Adapter.SubWebViewAdapter;
import com.example.ateam_project.WordItmeDataDTO;
import com.example.ateam_project.R;

import java.util.ArrayList;

public class Dic_fragment extends Fragment {

    private RecyclerView recyclerView;
    private SubWebViewAdapter adapter;
    private ArrayList<WordItmeDataDTO> list = new ArrayList<>();

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.sub_fragment_dic, container, false);


        RecyclerView recyclerView = view.findViewById(R.id.recycler_dic);
        LinearLayoutManager layoutManager = new LinearLayoutManager(getContext(), RecyclerView.VERTICAL, false);
        recyclerView.setLayoutManager(layoutManager);

        SubWebViewAdapter adapter = new SubWebViewAdapter(getContext());
        adapter.addItem(new WordItmeDataDTO("구글 번역기","translate.google.co.kr"));
        adapter.addItem(new WordItmeDataDTO("파파고 번역기","papago.naver.com/"));
        adapter.addItem(new WordItmeDataDTO("표준국어대사전","stdict.korean.go.kr/main/main.do"));
        adapter.addItem(new WordItmeDataDTO("네이버 백과사전","terms.naver.com/"));
        adapter.addItem(new WordItmeDataDTO("네이버 국어 사전","ko.dict.naver.com/"));
        adapter.addItem(new WordItmeDataDTO("네이버 영어 사전","en.dict.naver.com/"));
        adapter.addItem(new WordItmeDataDTO("네이버 영엉 사전","dict.naver.com/enendict/english"));
        adapter.addItem(new WordItmeDataDTO("Macmillan 영영사전","www.macmillandictionary.com"));
        adapter.addItem(new WordItmeDataDTO("Longman 영영사전","www.ldoceonline.com/"));
        adapter.addItem(new WordItmeDataDTO("네이버 일어 사전","ja.dict.naver.com/"));
        adapter.addItem(new WordItmeDataDTO("네이버 중국어 사전","zh.dict.naver.com/"));
        adapter.addItem(new WordItmeDataDTO("네이버 프랑스어 사전","dict.naver.com/frkodict/french/"));
        adapter.addItem(new WordItmeDataDTO("네이버 독일어 사전","dict.naver.com/dekodict"));
        adapter.addItem(new WordItmeDataDTO("네이버 러시아어 사전","dict.naver.com/rukodict/#/main"));
        adapter.addItem(new WordItmeDataDTO("네이버 스페인어 사전","dict.naver.com/eskodict/"));
        adapter.addItem(new WordItmeDataDTO("네이버 한자어사전","hanja.dict.naver.com/"));
        adapter.addItem(new WordItmeDataDTO("caseNote 판례검색","casenote.kr/"));
        adapter.addItem(new WordItmeDataDTO("국가법령정보센터","m.easylaw.go.kr/MOB/Main.laf"));
        adapter.addItem(new WordItmeDataDTO("KMLE 의학 사전","m.kmle.co.kr/index.php"));
        adapter.addItem(new WordItmeDataDTO("어반딕셔너리","www.urbandictionary.com"));
        recyclerView.setAdapter(adapter);

        return view;

    };
}

