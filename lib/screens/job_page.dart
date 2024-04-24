import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:tgf_sample/extensions/color.dart';
import 'package:tgf_sample/extensions/style.dart';
import 'package:tgf_sample/screens/carriage_page.dart';
import 'package:tgf_sample/screens/cut_off_page.dart';
import 'package:tgf_sample/widget/job_card.dart';

class JobPage extends StatefulWidget {
  const JobPage({super.key});

  @override
  State<JobPage> createState() => _JobPageState();
}

//DROP DOWN MENU
class _JobPageState extends State<JobPage> {
  String _selectedItem = "Cut-Off";
  List<String> _items = [
    "Cut-Off",
    "Carriage",
    "Container",
    "Customs",
    "Detention & Demurge",
    "Connect Hub",
    "Documents"
  ];

//DROP DOWN MENU

//ROUTING FUNCTION
  String _selectedWidget = 'Cut-Off';

  Widget _buildSelectedWidget() {
    switch (_selectedWidget) {
      case 'Cut-Off':
        return buildCutOff(context);
        
      case 'Carriage':
        return CarriageWidget();
      // Add more cases for additional widgets
      default:
        return Container();
    }
  }
//ROUTING FUNCTION

//CHANGE TEXT
  String selectedText = "Upcoming Cut-off";
  String selectedActivity = "23-Apr-2024";

  checkDropDown(String _selectedItem){
      if( _selectedItem == "Cut-Off"){
          selectedText = "Upcoming Cut-off";
          selectedActivity =  "23-Apr-2024";
      }
      if( _selectedItem == "Carriage"){
          selectedText = "Upcoming Activity";
          selectedActivity = "Update the ATD";
      }
      
 }

//CHANGE TEXT

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryBlue,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Job Details").textColor(Colors.white),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildJobCard(context),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shipping Execution",
                          style: SubHeaderStyle(),
                        ),
                        // DropdownButton(items: items, onChanged: onChanged)
                        DropdownButton<String>(
                          elevation: 5,
                          dropdownColor: cardColor,
                          value: _selectedItem,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedItem = newValue!;
                              _selectedWidget = newValue;
                                checkDropDown(_selectedItem);
                            });
                          },
                          items: _items
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(fontSize: 14),
                              ),
                            );
                          }).toList(),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    color: Color(0xffF9F4E5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          selectedText,
                          style: TextStyle(
                              color: titleColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(selectedActivity,
                            style: TextStyle(color: yellowText, fontSize: 16))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Column(
                      children: [
                        _buildSelectedWidget(),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
