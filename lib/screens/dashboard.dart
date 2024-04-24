import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tgf_sample/screens/job_page.dart';
import 'package:tgf_sample/screens/jobs.dart';
import 'package:tgf_sample/widget/dasboard_card_2.dart';
import 'package:tgf_sample/widget/dashboard_card.dart';
import 'package:tgf_sample/widget/dashboard_card_3.dart';



class DashboardPage extends StatelessWidget {
   DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(10),
          child: GridView.count(
            childAspectRatio: 1.3,
  crossAxisCount: 2,
  children: [
    buildCard("Jobs To be Booked", "20","Since yesterday",Icons.trending_up,"12.1%").onTap((){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>JobsPage()));
    }),
    buildCard("Booking Requested", "12", "Since yesterday",Icons.trending_up, "12.1%").onTap((){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>JobsPage()));
    }),
    buildCard("Booking Completed", "1", "Since yesterday",Icons.trending_up, "12.1%").onTap((){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>JobsPage()));
    }),
    buildCard("Jobs In Progress", "84", "Since yesterday",Icons.trending_up, "12.1%").onTap((){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>JobsPage()));
    }),
    buildCard2("Jobs In Progress", "84", "Since yesterday",Icons.trending_down, "2.3%").onTap((){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>JobsPage()));
    }),
    buildCard3("Notifications", "61", "0", "Read", "Unread").onTap((){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>JobsPage()));
    }),
    buildCard2("Pending For Delivery", "17", "Since yesterday", Icons.trending_down, "2.3%").onTap((){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>JobsPage()));
    }),
    buildCard("Jobs Completed", "84", "Since yesterday",Icons.trending_up, "12.1%").onTap((){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>JobsPage()));
    }),
  
  ],
)
        ),
    );
  }
}

