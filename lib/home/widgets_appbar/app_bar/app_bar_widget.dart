import 'package:dev_quiz/core/app_gradients.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/home/widgets_appbar/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget():
        super(
          preferredSize: Size.fromHeight(200),
          child: Container(
            height: 180,
            decoration: BoxDecoration(gradient: AppGradients.linear),
            child:Stack(

              children: [
                Container(
                  height: 160,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  width: double.maxFinite,
                  decoration: BoxDecoration(gradient: AppGradients.linear),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(TextSpan(
                          text:"Olá, ",
                          style: AppTextStyles.title,
                          children:[
                            TextSpan(
                              text: "Pedro Cozzati",
                              style: AppTextStyles.titleBold,
                            )
                          ]
                        )),
                          Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(12),
                            image: DecorationImage(image: NetworkImage(
                                "http://s2.glbimg.com/VD9XgaIKvSsGQCXNttt1lZHHY9o=/695x0/s.glbimg.com/po/tt2/f/original/2015/09/28/android.jpg")
                            ),
                          ),
                        )

                      ],
                  ),
                ),
                Align(
                  alignment: Alignment(0.0,3.6),
                  child: ScoreCardWidget())
              ],
            ),
            ),
        );
}
