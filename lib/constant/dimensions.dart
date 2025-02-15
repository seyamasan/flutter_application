import 'package:flutter/material.dart';

class Dimensions {
  // 画面幅の90% 
  static double getWidth90(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.9;
  }

  // 画面幅の80% 
  static double getWidth80(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.8;
  }

  // 画面幅の70% 
  static double getWidth70(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.7;
  }

  // 画面幅の60% 
  static double getWidth60(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.6;
  }
}