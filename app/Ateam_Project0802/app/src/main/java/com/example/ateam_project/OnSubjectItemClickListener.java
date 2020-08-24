package com.example.ateam_project;

import android.view.View;

import com.example.ateam_project.Adapter.SubjectAdapter;

public interface OnSubjectItemClickListener {
    public void onItemClick(SubjectAdapter.ViewHolder holderm,
                            View view, int position);
}
