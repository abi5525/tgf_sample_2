
import 'package:flutter/material.dart';

import 'package:tgf_sample/extensions/color.dart';

Widget buildtaskCard(
  String date,
  String month,
  String jobId,
  String jobDetails,
  Color dateColor
) {
  return Container(
    height: 130,
    child: Padding(
        padding: const EdgeInsets.fromLTRB(20,20,20,0),
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          color: Colors.white,
          // margin: EdgeInsets.fromLTRB(20,10,20,0),
          child:Row(
              children: [
                Expanded(child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5)),
                  color: Color(0xffdde2ee),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(date, style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: dateColor),),
                      Text(month, style: TextStyle(fontSize:15, fontWeight: FontWeight.w500 , color: dateColor),)
                    ],
                  ),
                ),flex: 2,),
                Expanded(child: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(jobId, style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: titleColor),),
                        SizedBox(height: 5,),
                        Text(jobDetails, style: TextStyle(overflow: TextOverflow.ellipsis, fontSize: 18, fontWeight: FontWeight.w400, color: subTitleColor),)
                      ],
                    ),
                  ),
                ),flex: 6,),
              ],
          ),
        )),
  );
}
