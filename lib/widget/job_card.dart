
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:tgf_sample/extensions/color.dart';
import 'package:tgf_sample/extensions/style.dart';

Widget buildJobCard(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(20),
    height: 230,
    child: Card(
      elevation: 2,
    shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          color: Colors.white,
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment:CrossAxisAlignment.center ,
              children: [
                buildBorder("J1521652",Colors.transparent,titleColor),
                buildBorder("Sea",secondaryBlue,Colors.white),
                buildBorder("FCL",secondaryBlue,Colors.white),            
                ElevatedButton(onPressed: (){}, child: Text("+5 More",style: TextStyle(color: titleColor, fontSize: 15, fontWeight: FontWeight.w600),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  side: BorderSide(
                    color: secondaryBlue,
                    width: 1,
                  ),
                  padding: EdgeInsets.fromLTRB(10,6,10,6),
                  minimumSize: Size(1.0, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("ETD",style: BodyStyleDark(),),
                          buildBorder("09/04/24", Colors.transparent, titleColor)
                        ],
                      ),
                      SizedBox(height:10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("ETA",style: BodyStyleDark(),),
                          buildBorder("16/04/24", Colors.transparent, titleColor)
                        ],
                      ),
                      
                    ],
                )),
                SizedBox(width: 20,),
                Expanded(child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [ 
                          Text("ATD",style: BodyStyleDark(),),
                          buildBorder("09/04/24", Colors.transparent, titleColor)
                        ],
                      ),
                      SizedBox(height:10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("ATA",style: BodyStyleDark(),),
                          buildBorder("16/04/24", Colors.transparent, titleColor)
                        ],
                      ),
                    ],
                )),
              ],
            ),
            Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text("From : ",style: BodyStyleDark(),),
                              Text("Dubai",style:BodyStyleDark() ,),
                            ],
                          ),
                          Icon(Icons.arrow_forward),
                          Row(
                            children: [
                              Text("To : ",style: BodyStyleDark(),),
                              Text("Chennai",style:BodyStyleDark() ,),
                            ],
                          )
                        ],
                      )
          ],
        ),
      ),
    ),
  );
}


Widget buildBorder(String content, Color bgColor, Color textColor){
  return Container(     
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: bgColor,  
        border: Border.all(
          color: secondaryBlue
        )
      ),
      padding: EdgeInsets.fromLTRB(10,6,10,6),
      child: Text(content, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color:textColor ),),
  );
}