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
	String get title => 'カウンターScreen';
	String get tap_count => 'ボタンをタップした回数:';
}

// Path: liquid_swipe
class TranslationsLiquidSwipeJa {
	TranslationsLiquidSwipeJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'liquid_swipeのScreen';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'basic.title': return '基本的なScreen';
			case 'custom.title': return 'カスタムScreen';
			case 'counter.title': return 'カウンターScreen';
			case 'counter.tap_count': return 'ボタンをタップした回数:';
			case 'liquid_swipe.title': return 'liquid_swipeのScreen';
			default: return null;
		}
	}
}

