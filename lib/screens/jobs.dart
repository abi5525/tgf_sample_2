import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:tgf_sample/extensions/color.dart';
import 'package:tgf_sample/extensions/style.dart';
import 'package:tgf_sample/widget/job_card2.dart';
import 'package:tgf_sample/widget/job_dropdown.dart';

class JobsPage extends StatefulWidget {
  const JobsPage({Key? key}) : super(key: key);

  @override
  State<JobsPage> createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> {
  //DROPDOWN MENU SORT
  List<String> dropdownItems = ['Sort by: Newest', 'Sort by: Oldest'];
  String dropdownValue = 'Sort by: Newest';
  //DROPDOWN MENU SORT

  //DROPDOWN MENU SEACRH
  List<String> seacrhItems = ['Job ID', 'Origin Port', 'Destination Port', 'Consignee', 'Shipper'];
  String searchValue = 'Job ID';
  //DROPDOWN MENU SEACRH

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryBlue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text("Jobs").textColor(Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 36,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: secondaryBlue, width: 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      const Icon(Icons.filter_list),
                      Text(
                        "Filter",
                        style: TextStyle(color: titleColor, fontSize: 16),
                      )
                    ],
                  ),
                ).onTap(() {
                  _displayBottomSheet(context);
                }),
                Container(
                  height: 38,
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      // border: Border.all(color: secondaryBlue, width: 1),
                      borderRadius: BorderRadius.circular(5),
                      color: secondaryBlue),
                  child: DropdownButton<String>(
                    value: dropdownValue, // The currently selected value
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ), // Dropdown icon
                    iconSize: 36.0, // Icon size
                    elevation: 16, // Shadow effect
                    style: TextStyle(
                        color: titleColor, fontSize: 16.0), // Text style
                    underline: Container(
                      // Remove underline
                      height: 0, // Set height to 0 to hide the underline
                    ),
                    dropdownColor: secondaryBlue,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: dropdownItems
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value).textColor(Colors.white),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: grey, width: 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      hintText: searchValue,
                      suffixIcon: PopupMenuButton<String>(
                        onSelected: (String result) {
                          // Handle the selection here
                          setState(() {
                            searchValue = result;
                          });
                        },
                        itemBuilder: (BuildContext context) => seacrhItems
                            .map((String item) => PopupMenuItem<String>(
                                value: item, child: Text(item)))
                            .toList(),
                        icon: const Icon(Icons.sort),
                      ),
                    ),
                  ),
                ))
              ],
            ),
            Column(
              children: [
                buildJobCard2(context)
              ],
            )
          ],
        ),
      ),
    );
  }

//BOTTOM SHEET

  Future _displayBottomSheet(BuildContext context) {

    void closeModal(BuildContext context) {
  Navigator.pop(context);
}
    // List to hold checkbox values
    List<bool> checkboxValues = [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
    ];

    // Method to handle checkbox changes
    void onCheckboxChanged(int index, bool value) {
      setState(() {
        checkboxValues[index] = value;
      });
    }

    // Method to clear checkboxes
 
      void clearAllCheckBoxes() {
    setState(() {
       checkboxValues.forEach((value) {
        value = false;
      });
    });
  }


    return showModalBottomSheet(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            height: 400,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Filter By",
                  style: BodyStyle(),
                ),
                SizedBox(height: 10),
                //MAIN ROW
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                            checkColor: cardColor,
                            activeColor: secondaryBlue,
                            value: checkboxValues[0],
                            onChanged: (value) {
                              onCheckboxChanged(0, value!);
                              setState(() {}); // Rebuild UI
                            },
                          ),
                          Text("New").fontSize(18),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                            checkColor: cardColor,
                            activeColor: secondaryBlue,
                            value: checkboxValues[1],
                            onChanged: (value) {
                              onCheckboxChanged(1, value!);
                              setState(() {}); // Rebuild UI
                            },
                          ),
                          Text("Verification").fontSize(18),
                        ],
                      ),
                    ),
                  ],
                ),
                //MAIN ROW
                //MAIN ROW
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                            checkColor: cardColor,
                            activeColor: secondaryBlue,
                            value: checkboxValues[2],
                            onChanged: (value) {
                              onCheckboxChanged(2, value!);
                              setState(() {}); // Rebuild UI
                            },
                          ),
                          Text("Booking").fontSize(18),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                            checkColor: cardColor,
                            activeColor: secondaryBlue,
                            value: checkboxValues[3],
                            onChanged: (value) {
                              onCheckboxChanged(3, value!);
                              setState(() {}); // Rebuild UI
                            },
                          ),
                          Text("Execution").fontSize(18),
                        ],
                      ),
                    ),
                  ],
                ),   
                //MAIN ROW
                //MAIN ROW
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                            checkColor: cardColor,
                            activeColor: secondaryBlue,
                            value: checkboxValues[4],
                            onChanged: (value) {
                              onCheckboxChanged(4, value!);
                              setState(() {}); // Rebuild UI
                            },
                          ),
                          Flexible(
                            child: Text(
                              "Delivery Pending",
                              style: TextStyle(fontSize: 18),
                              overflow: TextOverflow
                                  .ellipsis, // Handle overflow with ellipsis
                              maxLines: 1, // Restrict to a single line
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                            checkColor: cardColor,
                            activeColor: secondaryBlue,
                            value: checkboxValues[5],
                            onChanged: (value) {
                              onCheckboxChanged(5, value!);
                              setState(() {}); // Rebuild UI
                            },
                          ),
                          Text("Completed").fontSize(18),
                        ],
                      ),
                    ),
                  ],
                ),
                //MAIN ROW
                //MAIN ROW
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                            checkColor: cardColor,
                            activeColor: secondaryBlue,
                            value: checkboxValues[6],
                            onChanged: (value) {
                              onCheckboxChanged(6, value!);
                              setState(() {}); // Rebuild UI
                            },
                          ),
                          Text("Invoicing").fontSize(18),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                            checkColor: cardColor,
                            activeColor: secondaryBlue,
                            value: checkboxValues[7],
                            onChanged: (value) {
                              onCheckboxChanged(7, value!);
                              setState(() {}); // Rebuild UI
                            },
                          ),
                          Text("Closed").fontSize(18),
                        ],
                      ),
                    ),
                  ],
                ),
                //MAIN ROW
                //MAIN ROW
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                            checkColor: cardColor,
                            activeColor: secondaryBlue,
                            value: checkboxValues[8],
                            onChanged: (value) {
                              onCheckboxChanged(8, value!);
                              setState(() {}); // Rebuild UI
                            },
                          ),
                          Text("Cancelled").fontSize(18),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                            checkColor: cardColor,
                            activeColor: secondaryBlue,
                            value: checkboxValues[9],
                            onChanged: (value) {
                              onCheckboxChanged(9, value!);
                              setState(() {}); // Rebuild UI
                            },
                          ),
                          Text("Rejected").fontSize(18),
                        ],
                      ),
                    ),
                  ],
                ),
                //MAIN ROW
                //MAIN ROW
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                            checkColor: cardColor,
                            activeColor: secondaryBlue,
                            value: checkboxValues[10],
                            onChanged: (value) {
                              onCheckboxChanged(10, value!);
                              setState(() {}); // Rebuild UI
                            },
                          ),
                          Text("Hold").fontSize(18),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                            checkColor: cardColor,
                            activeColor: secondaryBlue,
                            value: checkboxValues[11],
                            onChanged: (value) {
                              onCheckboxChanged(11, value!);
                              setState(() {}); // Rebuild UI
                            },
                          ),
                          Text("Arrived").fontSize(18),
                        ],
                      ),
                    ),
                  ],
                ),
                //MAIN ROW

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          clearAllCheckBoxes();
                        },
                        child: Text(
                          "Clear",
                          style: TextStyle(color: titleColor, fontSize: 16),
                        )),
                    TextButton(
                        onPressed: () {
                          closeModal(context);
                        },
                        child: Text(
                          "Apply",
                          style: TextStyle(color: primaryBlue, fontSize: 16),
                        ))
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
//BOTTOM SHEET
}
