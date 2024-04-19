import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:tgf_sample/extensions/color.dart';

Widget buildCard3(String title, String count1, String count2, String subtitle1, String subtitle2) {
  return Container(

    child: Card(
      
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(   
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(count1, style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: greenText),),
                Text(count2, style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: yellowText),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(subtitle1,style: TextStyle(fontSize:16,fontWeight: FontWeight.w400 ),),
                SizedBox(width: 30,),
                Text(subtitle2,style: TextStyle(fontSize:16,fontWeight: FontWeight.w400 ),)
              ],
            )
          ],
        ),
      ),
    ),
  );
}