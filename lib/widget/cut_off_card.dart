
import 'package:flutter/material.dart';
import 'package:tgf_sample/extensions/color.dart';
import 'package:tgf_sample/extensions/style.dart';
import 'package:tgf_sample/widget/job_card.dart';

Widget buildCutOffCard(BuildContext context){
  return Container(
    padding: EdgeInsets.fromLTRB(15,10,15,0),
    
    decoration: BoxDecoration(
      border: Border.all(color:hintText, width: 1),
       
    ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Text("Type",style: BodyStyleDark(),)),
              Expanded(child: buildBorder("Gate Open Cut-Off", Colors.transparent, titleColor))
            ],
          ),  
          SizedBox(height: 10,),    
          Row(
            children: [
              Expanded(child: Text("Location",style: BodyStyleDark(),)),
              
              Expanded(child: buildBorder("Abu Dhabi", Colors.transparent, titleColor))
            ],
          ),
          SizedBox(height: 10,)  ,      
          Row(
            children: [
              Expanded(child: Text("Cut-off date",style: BodyStyleDark(),)),
             
              Expanded(child: buildBorder("09/Apr/2024 4:11 PM", Colors.transparent, titleColor))
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
                IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever,),color: Colors.red,),
              ],
          )
        ],
      ),
  );
}
