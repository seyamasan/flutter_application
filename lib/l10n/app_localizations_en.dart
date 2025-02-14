import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get basic_title => 'Basic Screen';

  @override
  String get custom_title => 'Custom Screen';

  @override
  String get counter_title => 'Counter View';

  @override
  String get counter_screen_tap_count => 'Number of times the button was tapped:';

  @override
  String get liquid_swipe_title => 'Liquid Swipe Screen';
}
