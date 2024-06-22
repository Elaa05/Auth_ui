import 'package:flutter/material.dart';

class Responsive {
  final BuildContext context;
  double _screenWidth;
  double _screenHeight;

  Responsive(this.context)
      : _screenWidth = MediaQuery.of(context).size.width,
        _screenHeight = MediaQuery.of(context).size.height;

  double width(double percentage) {
    return _screenWidth * percentage / 100;
  }

  double height(double percentage) {
    return _screenHeight * percentage / 100;
  }

  double fontSize(double percentage) {
    return _screenHeight * percentage / 100;
  }

  double padding(double percentage) {
    return _screenWidth * percentage / 100;
  }
}
