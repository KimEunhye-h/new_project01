package com.example.ateam_project;

public class WordItmeDataDTO {
    public String word;
    public String meaning;
    public String button;
    public int itemViewType;

    public WordItmeDataDTO(){}

    public int getItemViewType() {
        return itemViewType;
    }

    public void setItemViewType(int itemViewType) {
        this.itemViewType = itemViewType;
    }

    public String getWord() {
        return word;
    }

    public void setWord(String word) {
        this.word = word;
    }

    public String getMeaning() {
        return meaning;
    }

    public void setMeaning(String meaning) {
        this.meaning = meaning;
    }

    public String getButton() {
        return button;
    }

    public void setButton(String button) {
        this.button = button;
    }

    // 화면에 표시될 문자열 초기화
    public WordItmeDataDTO(String word, String meaning) {
        this.word = word;
        this.meaning = meaning;
        this.itemViewType = itemViewType;
    }


}
