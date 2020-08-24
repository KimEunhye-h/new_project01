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
import android.widget.EditText;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.ateam_project.ATask.Friend_Add_Insert_ATask;
import com.example.ateam_project.DTO.FriendAddDTO;
import com.example.ateam_project.FriendAdd;
import com.example.ateam_project.OnFriendItemClickListener;
import com.example.ateam_project.R;

import java.util.ArrayList;
import java.util.concurrent.ExecutionException;

import static com.example.ateam_project.FriendAdd.friend_recyclerView;
import static com.example.ateam_project.FriendAdd.selItem1;
import static com.example.ateam_project.LoginActivity.loginDTO;

public class FriendAddAdapter extends RecyclerView.Adapter<FriendAddAdapter.ViewHolder> implements OnFriendItemClickListener,Filterable{
    ArrayList<FriendAddDTO> dtos = new ArrayList<>();
    OnFriendItemClickListener listener;
    Context context;
    ArrayList<FriendAddDTO> unFilteredlist;
    ArrayList<FriendAddDTO> filteredList;
    String state2;
    //public AccessRecordAdapter(){};
    String name;


    public FriendAddAdapter(Context context, ArrayList<FriendAddDTO> list) {
        super();
        this.context = context;
        this.unFilteredlist = list;
        this.filteredList = list;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(parent.getContext());
        View itemView = inflater.inflate(R.layout.friend_add_item, parent, false);




        return new ViewHolder(itemView,listener);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, final int position) {
        name=loginDTO.getName();

        FriendAddDTO item = filteredList.get(position);
        holder.setItem(item);
        holder.friend_add_btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ////★★★★★★★★
                selItem1 = filteredList.get(position);
                final String user_name =name;
                final String name  =selItem1.getName().trim();
                final String email  =selItem1.getEmail().trim();
                final String job =selItem1.getJob().trim();
                AlertDialog.Builder builder = new AlertDialog.Builder(friend_recyclerView.getContext());

                builder.setTitle("친구추가").setMessage("정말 추가하시겠습니까?");


                builder.setPositiveButton("OK", new DialogInterface.OnClickListener(){
                    @Override
                    public void onClick(DialogInterface dialog, int id)
                    {
                        Toast.makeText(friend_recyclerView.getContext(), "OK Click", Toast.LENGTH_SHORT).show();
                        Friend_Add_Insert_ATask friend_add_Insert_aTask = new Friend_Add_Insert_ATask(user_name, name, email,job);
                        try {
                            state2 = friend_add_Insert_aTask.execute().get().trim();
                        } catch (ExecutionException e) {
                            e.getMessage();
                        } catch (InterruptedException e) {
                            e.getMessage();
                        }
                        if(state2.equals("1")){
                            Toast.makeText(friend_recyclerView.getContext(), "삽입성공 !!!", Toast.LENGTH_SHORT).show();
                            Log.d("main:joinact", "삽입성공 !!!");
                            Intent intent = new Intent(context, FriendAdd.class);
                            context.startActivity(intent);


                        }else{
                            Toast.makeText(friend_recyclerView.getContext(), "삽입실패 !!!", Toast.LENGTH_SHORT).show();
                            Log.d("main:joinact", "삽입실패 !!!");
                            //((Activity)context).finish();
                        }


                    }
                });

                builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener(){
                    @Override
                    public void onClick(DialogInterface dialog, int id)
                    {
                        Toast.makeText(friend_recyclerView.getContext(), "Cancel Click", Toast.LENGTH_SHORT).show();

                    }
                });
                AlertDialog alertDialog = builder.create();
                alertDialog.show();



            }
        });
        holder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

            }
        });



    }

    @Override
    public int getItemCount() {
        return filteredList.size();
    }
    public void addItem(FriendAddDTO item){
        filteredList.add(item);
        unFilteredlist.add(item);
    }

    public FriendAddDTO getItem(int position){ return filteredList.get(position);}
    public void setOnItemClickListener(OnFriendItemClickListener listener){
        this.listener = listener;
    }

    public void setItem(int position, FriendAddDTO item){
        filteredList.set(position, item);
}
    @Override
    public void onItemClick(ViewHolder holderm, View view, int position) {
        if(listener != null){
            listener.onItemClick(holderm, view, position);
        }
    }

    @Override
    public Filter getFilter() {
        return new Filter() {

            @Override
            protected FilterResults performFiltering(CharSequence constraint) {
                String charString = constraint.toString();
                if(charString.isEmpty()){
                    filteredList = unFilteredlist;
                } else {
                    ArrayList<FriendAddDTO> filteringList = new ArrayList<>();
                    for(FriendAddDTO dto : unFilteredlist){
                        if(dto.getName().toLowerCase().contains((charString.toLowerCase()))) {

                            filteringList.add(dto);
                        }
                        if(dto.getJob().toLowerCase().contains((charString.toLowerCase()))) {

                            filteringList.add(dto);
                        }
                    }
                    filteredList = filteringList;
                }
                FilterResults filterResults = new FilterResults();
                filterResults.values = filteredList;
                return filterResults;
            }

            @Override
            protected void publishResults(CharSequence constraint, FilterResults results) {
                filteredList = (ArrayList<FriendAddDTO>) results.values;
                notifyDataSetChanged();
            }
        };
    }










    public static class ViewHolder extends RecyclerView.ViewHolder{
        ImageView accessImage;
        TextView openClose,accessName,accessTime;
        Button friend_add_btn;
        EditText editText;
        public ViewHolder(@NonNull View itemView, final OnFriendItemClickListener listener) {
            super(itemView);
            accessImage = itemView.findViewById(R.id.accessImage);
            openClose = itemView.findViewById(R.id.openClose);
            accessName = itemView.findViewById(R.id.accessName);
            accessTime = itemView.findViewById(R.id.accessTime);
            friend_add_btn=itemView.findViewById(R.id.friend_add_btn);
            //editText = itemView.findViewById(R.id.edittext);
            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    int position = getAdapterPosition();
                    if(listener != null){
                        listener.onItemClick(ViewHolder.this, view, position);

                    }
                }
            });
        }


        public void setItem(FriendAddDTO item){
            accessTime.setText(item.getName());
            openClose.setText(item.getEmail());
            accessName.setText(item.getJob());
        }

    }

}
