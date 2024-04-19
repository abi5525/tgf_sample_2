import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:tgf_sample/extensions/color.dart';

Widget buildCard2(String title, String count, String subtitle, IconData icon, String percentage ) {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(count, style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                
                Container(
                  height: 35,
                  width: 90,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: redText),
                  color: redBg,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(icon,color: redText,),
                      Text(percentage).textColor(redText)
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(subtitle,style: TextStyle(fontSize:16,fontWeight: FontWeight.w400 ),)
              ],
            )
          ],
        ),
      ),
    ),
  );
}