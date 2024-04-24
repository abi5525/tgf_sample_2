import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:tgf_sample/extensions/color.dart';
import 'package:tgf_sample/screens/maincariage.dart';
import 'package:tgf_sample/screens/oncariage.dart';
import 'package:tgf_sample/screens/precariage.dart';
import 'package:tgf_sample/widget/cut_off_card.dart';

class CarriageWidget extends StatefulWidget {
  @override
  _CarriageWidgetState createState() => _CarriageWidgetState();
}
class _CarriageWidgetState extends State<CarriageWidget> 
    with SingleTickerProviderStateMixin {

late TabController _tabController;
@override
  void initState() {
    
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
     _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Container(  
      height: 700,     
        child: Column(
          children: [
            TabBar(
              labelColor: titleColor,
              unselectedLabelColor: hintText,
              indicatorColor: primaryBlue,
              indicatorWeight: 2,
              controller: _tabController,  
              tabs: [
              Text("Pre").fontSize(16),
              Text("Main").fontSize(16),
              Text("On").fontSize(16),
            ]),
            SizedBox(height: 10,),
           Expanded(
             child: TabBarView(
              controller: _tabController,
              children: [
                buildPreCarriage(context),
                buildMainCarriage(context),
                buildOnCarriage(context)
              ]),
           )
          ],
        ),
      );
  }
}























// Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//               padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
//               decoration: BoxDecoration(
//                   border: Border.all(color: secondaryBlue),
//                   borderRadius: BorderRadius.circular(5)),
//               child: Column(
//                 children: [
//                   Text(
//                     "Pre Carriage",
//                     style: TextStyle(
//                         color: titleColor, fontWeight: FontWeight.w500),
//                   ),
//                   Text(
//                     "Completed",
//                     style: TextStyle(color: greenText, fontSize: 13),
//                   )
//                 ],
//               ),
//             ).onTap(() {
//               showPre();
//             }),
//             Container(
//               padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
//               decoration: BoxDecoration(
//                   border: Border.all(color: secondaryBlue),
//                   borderRadius: BorderRadius.circular(5)),
//               child: Column(
//                 children: [
//                   Text(
//                     "Main Carriage",
//                     style: TextStyle(
//                         color: titleColor, fontWeight: FontWeight.w500),
//                   ),
//                   Text(
//                     "Pending",
//                     style: TextStyle(color: yellowText, fontSize: 13),
//                   )
//                 ],
//               ),
//             ).onTap(() {
//              showMain();
//             }),
//             Container(
//               padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
//               decoration: BoxDecoration(
//                   border: Border.all(color: secondaryBlue),
//                   borderRadius: BorderRadius.circular(5)),
//               child: Column(
//                 children: [
//                   Text(
//                     "On Carriage",
//                     style: TextStyle(
//                         color: titleColor, fontWeight: FontWeight.w500),
//                   ),
//                   Text(
//                     "Pending",
//                     style: TextStyle(color: yellowText, fontSize: 13),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         newWidget
//       ],
//     );