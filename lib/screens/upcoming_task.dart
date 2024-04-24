import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'package:tgf_sample/extensions/color.dart';
import 'package:tgf_sample/screens/job_page.dart';

import 'package:tgf_sample/widget/task_card.dart';

class UpcomingTask extends StatelessWidget {
  const UpcomingTask({super.key});

  @override
   Widget build(BuildContext context) {
    return Scaffold (
      body: ListView(
        children: [
          buildtaskCard("11", "Apr 2024", "J86768172673", "Verify shipper and consignee details", titleColor).onTap((){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>JobPage()));
                          }),
          buildtaskCard("11", "Apr 2024", "J86768172673", "Verify shipper and consignee details", titleColor).onTap((){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>JobPage()));
                          }),
          buildtaskCard("11", "Apr 2024", "J86768172673", "Verify shipper and consignee details", titleColor).onTap((){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>JobPage()));
                          }),
          buildtaskCard("11", "Apr 2024", "J86768172673", "Verify shipper and consignee details", titleColor).onTap((){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>JobPage()));
                          }),
          
        ],
      )
    );
  }
}