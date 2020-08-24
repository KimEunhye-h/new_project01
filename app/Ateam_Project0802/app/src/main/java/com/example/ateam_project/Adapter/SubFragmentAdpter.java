package com.example.ateam_project.Adapter;

import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;

import com.example.ateam_project.Fragment.Dic_fragment;
import com.example.ateam_project.Fragment.Music_fragment;

import java.util.ArrayList;

public class SubFragmentAdpter extends FragmentPagerAdapter {
    private ArrayList<Fragment> items;
    private ArrayList<String> itext = new ArrayList<String>() ;
    public SubFragmentAdpter(FragmentManager fm) {
        super(fm);
        items = new ArrayList<Fragment>();
        items.add(new Dic_fragment());
        items.add(new Music_fragment());
        /*items.add(new fragment3());*/

        itext.add("");
        itext.add("");
        /*itext.add("몰라");*/

    }

    @Nullable
    @Override
    public CharSequence getPageTitle(int position) {
        return itext.get(position);
    }

    @Override
    public Fragment getItem(int position) {

        return items.get(position);
    }

    @Override
    public int getCount() {
        return items.size();
    }
}
