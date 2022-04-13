import 'package:flutter/cupertino.dart';

class Measurement {
  double height=0.0;
  double width=0.0;
  Measurement({BuildContext? context}) {
    height = MediaQuery.of(context!).size.height;
    width = MediaQuery.of(context!).size.height;
  }
}
