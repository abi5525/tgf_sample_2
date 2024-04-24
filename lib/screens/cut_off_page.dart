

import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:tgf_sample/extensions/color.dart';
import 'package:tgf_sample/widget/cut_off_card.dart';

Widget buildCutOff(BuildContext context){
  return Column(
    children: [
      // TextButton.icon(onPressed: (){}, icon: Icon(Icons.add_circle), label: Text("Add")),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton.icon(onPressed: (){}, 
           icon: Icon(Icons.add_circle, color: Colors.white,),
           label: Text("Add").textColor(Colors.white), 
           style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
            ),
            backgroundColor: secondaryBlue,
           ),
           ),
        ],
      ),
      SizedBox(height: 10,),
      buildCutOffCard(context)

    ],
  );
}