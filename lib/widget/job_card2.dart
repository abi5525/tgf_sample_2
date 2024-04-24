import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:tgf_sample/extensions/color.dart';
import 'package:tgf_sample/extensions/style.dart';
import 'package:tgf_sample/screens/job_page.dart';
import 'package:tgf_sample/widget/job_card.dart';

Widget buildJobCard2(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => JobPage()));
    },
    child: Card(
      margin: EdgeInsets.only(top: 20),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        'ID J987876765',
                        style: BodyStyleDark(),
                      ).fontWeight(FontWeight.w600),
                    ],
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "From :",
                          style: BodyStyleDark(),
                        ).fontWeight(FontWeight.w600),
                      ),
                      Expanded(
                          child: buildBorder(
                              "Dubai", Colors.transparent, titleColor))
                    ],
                  ),
                ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child:
                              buildBorder('Sea', secondaryBlue, Colors.white)),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: buildBorder(
                              "Export", secondaryBlue, Colors.white))
                    ],
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "To :",
                        style: BodyStyleDark(),
                      ).fontWeight(FontWeight.w600),
                      buildBorder("Chennai", Colors.transparent, titleColor)
                    ],
                  ),
                ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child:
                              buildBorder('LCL', secondaryBlue, Colors.white)),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: buildBorder(
                              "More", Colors.transparent, titleColor))
                    ],
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: greenText),
                          color: greenBg,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: greenText,
                              size: 10,
                            ),
                            SizedBox(width: 3,),
                            Text("Completed").textColor(greenText)
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => JobPage()));
                        },
                        icon: Icon(
                          Icons.arrow_right_rounded,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
