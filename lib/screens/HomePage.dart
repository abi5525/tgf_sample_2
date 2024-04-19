import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:tgf_sample/extensions/color.dart';
import 'package:tgf_sample/extensions/style.dart';
import 'package:tgf_sample/screens/dashboard.dart';

import 'package:tgf_sample/screens/tasks.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Torus", style: HeaderStyle(),).textColor(Colors.white),
          centerTitle: true,
          backgroundColor: primaryBlue,
          bottom: TabBar(
            physics:NeverScrollableScrollPhysics(),
            labelColor: Colors.white,
            labelStyle: TextStyle(fontSize: 18),
            unselectedLabelColor: hintText,
                tabs: [
                  Tab( text: 'Dashboard'),
                  Tab( text: 'Tasks'),
                ],
              ),
        ),
        body: TabBarView(children: [
          DashboardPage(),
          TaskPage()
        ],),
      ),
    );
  }
}