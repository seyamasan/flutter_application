import 'package:flutter_application/i18n/strings.g.dart';
import 'package:flutter_application/util/calculation.dart';

// 自己紹介画面で使っているパラメータをまとめたクラス
class SelfIntroductionParam {
  static String name = t.self_introduction.name; // 名前
  static int age = Calculation.age(birthDate: DateTime(1998, 4, 24)); // 年齢
  static double height = 175.0; // 身長
  static bool isWorking = true; // 就業中かどうか
}