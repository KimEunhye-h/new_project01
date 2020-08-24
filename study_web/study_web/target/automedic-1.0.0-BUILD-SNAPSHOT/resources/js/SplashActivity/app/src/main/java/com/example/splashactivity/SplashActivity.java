package com.example.splashactivity;

import androidx.annotation.UiThread;
import androidx.appcompat.app.AppCompatActivity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;

public class SplashActivity extends Activity {
    TextView textView;
    TextView imageView;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.splash);

        textView = findViewById(R.id.textView);
        imageView = findViewById(R.id.imageView);

        Animation ani = AnimationUtils.loadAnimation(this, R.anim.anim_splash_imageview);
        imageView.startAnimation(ani);
        textView.startAnimation(AnimationUtils.loadAnimation( SplashActivity.this, R.anim.anim_splash_textview));

        ani.setAnimationListener(new Animation.AnimationListener() {
            @Override
            public void onAnimationStart(Animation animation) {


            }

            @Override
            public void onAnimationEnd(Animation animation) {

                try {

                    Thread.sleep(1000);     //대기 초 설정
                }catch (InterruptedException e){
                    e.printStackTrace();
                }
                startActivity(new Intent(SplashActivity.this,MainActivity.class));
                overridePendingTransition(R.anim.anim_splash_out_top, R.anim.anim_splash_out_down);
                finish();
            }
            @Override
            public void onAnimationRepeat(Animation animation) {

            }
        });






        /*Animation ani3 = AnimationUtils.loadAnimation(this, R.anim.anim_splash_imageview);
        imageView.startAnimation(ani3);*/

       /* try {
            Thread.sleep(4000);     //대기 초 설정
        }catch (InterruptedException e){
            e.printStackTrace();
        }
        startActivity(new Intent(this,));
        finish();
*/

    }



}
