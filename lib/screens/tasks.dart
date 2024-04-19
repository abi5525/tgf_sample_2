import 'package:flutter/material.dart';
import 'package:tgf_sample/extensions/color.dart';
import 'package:tgf_sample/screens/today_task.dart';
import 'package:tgf_sample/screens/upcoming_task.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Custom widget for your top content (optional)
            // YourTopContentWidget(),
            DefaultTabController(
              length: 2, // Number of tabs
              child: Expanded(
                child: Column(
                  children: [
                    TabBar(
                      labelColor: primaryBlue,
                      labelStyle: TextStyle(fontSize: 17),
                      unselectedLabelColor: titleColor,
                      unselectedLabelStyle: TextStyle(fontSize: 17),
                      indicatorColor: primaryBlue,
                      tabs: [
                        Tab(text: "Today",),
                        Tab(text: "Upcoming",),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          TodayTask(),
                          UpcomingTask()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
