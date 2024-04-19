import 'package:flutter/material.dart';
import 'package:tgf_sample/extensions/color.dart';


TextStyle HeaderStyle(){
  return TextStyle(
    color: titleColor,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    fontSize: 25,
  );
}


TextStyle BodyStyle(){
  return TextStyle(
    color: subTitleColor,
    fontSize: 14
  );
}