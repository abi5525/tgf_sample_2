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
TextStyle SubHeaderStyle(){
  return TextStyle(
    color: titleColor,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );
}


TextStyle BodyStyle(){
  return TextStyle(
    color: subTitleColor,
    fontSize: 17
  );
}

TextStyle BodyStyleDark(){
  return TextStyle(
    color: titleColor,
    fontSize: 17
  );
}