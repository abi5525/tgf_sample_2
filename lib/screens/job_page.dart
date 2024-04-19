import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:tgf_sample/extensions/color.dart';
import 'package:tgf_sample/widget/job_card.dart';

class JobPage extends StatefulWidget {
  const JobPage({super.key});

  @override
  State<JobPage> createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {

  String _selectedMenu = "Cut-Off";
  List<String> priority = ["Cut-Off", "Carriage", "Container","Customs","Detention & Demurge", "Connect Hub", "Documents"];

  Future<void> onSelected(value) async {
    setState(() {
      _selectedMenu = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: primaryBlue,
      iconTheme: IconThemeData(
        color: Colors.white
      ),
      title: Text("Job Details").textColor(Colors.white),
      ),
      body: SafeArea(
        child: Column(
          children: [
            buildJobCard(context),
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Shipping Execution"),
                      // DropdownButton(items: items, onChanged: onChanged)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}