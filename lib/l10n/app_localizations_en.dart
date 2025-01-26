import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get basic_title => '基本的なView';

  @override
  String get custom_title => 'カスタムView';

  @override
  String get counter_title => 'CounterView';

  @override
  String get counter_view_tap_count => 'Number of times the button was tapped:';
}
