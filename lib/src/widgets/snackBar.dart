import 'package:flutter/material.dart';
import 'package:daftpunk/src/core/constants.dart';

showSnackBar({BuildContext context, String title}) {
  final _snackBar = SnackBar(
    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    content: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: white,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    ),
    elevation: 5,
    backgroundColor: red,
    behavior: SnackBarBehavior.fixed,
    duration: Duration(seconds: 5),
  );
  Scaffold.of(context).showSnackBar(_snackBar);
}
