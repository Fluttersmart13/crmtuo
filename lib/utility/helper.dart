import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF017DC7);
const Color primaryDarkColor = Color(0xff016198);
const Color secondaryColor = Color(0xFFccecff);

const String no_internet_msg = "";

void showSnackBarError(BuildContext context, String errorMsg) {
  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(
        backgroundColor: Colors.black,
        content: Text(
          errorMsg,
          style: const TextStyle(color: Colors.white),
        )));
}
