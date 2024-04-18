import 'package:flutter/material.dart';
import 'package:tgf_sample/widget/dashboard_card.dart';



class DashboardPage extends StatelessWidget {
   DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child: GridView.count(
  crossAxisCount: 2,
  children: [
    buildCard("Sales", Icons.attach_money),
    buildCard("Inventory", Icons.storage),
    // Repeat for 6 more cards
  ],
)
        ),
    );
  }
}

