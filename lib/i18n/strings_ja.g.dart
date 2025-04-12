///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsJa = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsBasicJa basic = TranslationsBasicJa._(_root);
	late final TranslationsSelfIntroductionJa self_introduction = TranslationsSelfIntroductionJa._(_root);
	late final TranslationsRefreshIndicatorJa refresh_indicator = TranslationsRefreshIndicatorJa._(_root);
	late final TranslationsCustomJa custom = TranslationsCustomJa._(_root);
	late final TranslationsCounterJa counter = TranslationsCounterJa._(_root);
	late final TranslationsLiquidSwipeJa liquid_swipe = TranslationsLiquidSwipeJa._(_root);
}

// Path: basic
class TranslationsBasicJa {
	TranslationsBasicJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => '基本的なScreen';
}

// Path: self_introduction
class TranslationsSelfIntroductionJa {
	TranslationsSelfIntroductionJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => '自己紹介';
	String get name_label => '名前(String):';
	String get name => '瀬山皐太';
	String get age_label => '年齢(int):';
	String get height_label => '身長(double):';
	String get working_label => '就業中(bool):';
}

// Path: refresh_indicator
class TranslationsRefreshIndicatorJa {
	TranslationsRefreshIndicatorJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'リフレッシュインジケータ';
	String get item => 'アイテム';
	String get update => '更新';
	String get remove => 'を削除しました。';
}

// Path: custom
class TranslationsCustomJa {
	TranslationsCustomJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'カスタムScreen';
}

// Path: counter
class TranslationsCounterJa {
	TranslationsCounterJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Counter';
	String get tap_count => 'ボタンをタップした回数:';
}

// Path: liquid_swipe
class TranslationsLiquidSwipeJa {
	TranslationsLiquidSwipeJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Liquid swipe';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'basic.title': return '基本的なScreen';
			case 'self_introduction.title': return '自己紹介';
			case 'self_introduction.name_label': return '名前(String):';
			case 'self_introduction.name': return '瀬山皐太';
			case 'self_introduction.age_label': return '年齢(int):';
			case 'self_introduction.height_label': return '身長(double):';
			case 'self_introduction.working_label': return '就業中(bool):';
			case 'refresh_indicator.title': return 'リフレッシュインジケータ';
			case 'refresh_indicator.item': return 'アイテム';
			case 'refresh_indicator.update': return '更新';
			case 'refresh_indicator.remove': return 'を削除しました。';
			case 'custom.title': return 'カスタムScreen';
			case 'counter.title': return 'Counter';
			case 'counter.tap_count': return 'ボタンをタップした回数:';
			case 'liquid_swipe.title': return 'Liquid swipe';
			default: return null;
		}
	}
}

