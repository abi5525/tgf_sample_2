
import 'package:flutter/material.dart';
import 'package:tgf_sample/extensions/color.dart';
import 'package:tgf_sample/extensions/style.dart';
import 'package:tgf_sample/widget/job_card.dart';

Widget buildCarriageCard(BuildContext context){
  return Container(
    padding: EdgeInsets.fromLTRB(15,10,15,0),
    
    decoration: BoxDecoration(
      border: Border.all(color:hintText, width: 1),
       
    ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Text("Task",style: BodyStyleDark(),)),
              Expanded(child: buildBorder("Send CRO to origin transport", Colors.transparent, titleColor))
            ],
          ),  
          SizedBox(height: 10,),    
          Row(
            children: [
              Expanded(child: Text("Planned Date",style: BodyStyleDark(),)),
              
              Expanded(child: buildBorder("09/Apr/2024 4:11 PM", Colors.transparent, titleColor))
            ],
          ),
          SizedBox(height: 10,)  ,        
          Row(
            children: [
              Expanded(child: Text("Completed Date",style: BodyStyleDark(),)),
             
              Expanded(child: buildBorder("12/Apr/2024 6:21 PM", Colors.transparent, titleColor))
            ],
          ),  
          SizedBox(height: 10,)  ,       
          Row(
            children: [
              Expanded(child: Text("Status",style: BodyStyleDark(),)),
             
              Expanded(child: buildBorder("Completed", Colors.transparent, greenText))
            ],
          ),

          Row(
            mainAxisAlignment:MainAxisAlignment.end,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.edit), color: primaryBlue,),
                
              ],
          )
        ],
      ),
  );
}
