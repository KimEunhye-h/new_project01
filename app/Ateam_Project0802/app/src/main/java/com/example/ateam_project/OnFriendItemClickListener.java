package com.example.ateam_project;

import android.view.View;

import com.example.ateam_project.Adapter.FriendAddAdapter;

public interface OnFriendItemClickListener {
    public void onItemClick(FriendAddAdapter.ViewHolder holderm,
                            View view, int position);
}
