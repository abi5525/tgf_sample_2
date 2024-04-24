
import 'package:flutter/material.dart';
import 'package:tgf_sample/extensions/style.dart';
import 'package:tgf_sample/widget/carriage_card.dart';


Widget buildOnCarriage(BuildContext context){
    return Column(

    children: [
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Completed Activities",style: BodyStyleDark(),),
        Text("2/2",style: BodyStyleDark(),)
      ],
     ),
    SizedBox(height: 10,),
     buildCarriageCard(context),
     SizedBox(height: 10,),
     buildCarriageCard(context),
    ],
  );
      // TextButton.icon(onPressed: (){}, icon: Icon(Icons.add_circle), label: Text("Add")),
   
}