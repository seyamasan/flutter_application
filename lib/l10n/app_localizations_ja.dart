import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get basic_title => '基本的なScreen';

  @override
  String get custom_title => 'カスタムScreen';

  @override
  String get counter_title => 'カウンターScreen';

  @override
  String get counter_screen_tap_count => 'ボタンをタップした回数:';

  @override
  String get liquid_swipe_title => 'liquid_swipeのScreen';
}
