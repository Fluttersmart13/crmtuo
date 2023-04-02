import 'package:flutter/material.dart';

class CustomTextStyle {
  static Widget extraBold({String? text, double? fontSize, Color? color}) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w800,
        color: color,
      ),
    );
  }

  static Widget bold({String? text, double? fontSize, Color? color}) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        color: color,
      ),
      softWrap: false,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  static Widget semiBold({String? text, double? fontSize, Color? color}) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        color: color,
      ),
      softWrap: false,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  static Widget regular(
      {String? text, double? fontSize, Color? color, int? maxLines}) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        color: color,
      ),
    //  overflow: TextOverflow.ellipsis,
      softWrap: false,
      maxLines: maxLines,
    );
  }

  static Widget dotcircle({double? width,double? height}){
    return  Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
          color: Colors.grey, shape: BoxShape.circle),
    );
  }
}
