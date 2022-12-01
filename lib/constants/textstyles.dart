import 'package:flutter/material.dart';

Textstyles txtstlObj = Textstyles();

class Textstyles {
  TextStyle? headingStyle = const TextStyle(
    color: Colors.black,
    fontSize: 32,
    fontWeight: FontWeight.w600,
  );
  TextStyle? nameStyle = const TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
  TextStyle? subtitleStyle = const TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w600,
  );
  TextStyle? seeAllStyle = const TextStyle(
    color: Colors.blue,
    fontWeight: FontWeight.w600,
  );
}
