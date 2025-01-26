import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get basic_title => '基本的なView';

  @override
  String get custom_title => 'カスタムView';

  @override
  String get counter_title => 'カウンターView';

  @override
  String get counter_view_tap_count => 'ボタンをタップした回数:';
}
