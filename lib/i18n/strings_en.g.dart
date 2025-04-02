///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsEn implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEn _root = this; // ignore: unused_field

	@override 
	TranslationsEn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsBasicEn basic = _TranslationsBasicEn._(_root);
	@override late final _TranslationsCustomEn custom = _TranslationsCustomEn._(_root);
	@override late final _TranslationsCounterEn counter = _TranslationsCounterEn._(_root);
	@override late final _TranslationsLiquidSwipeEn liquid_swipe = _TranslationsLiquidSwipeEn._(_root);
}

// Path: basic
class _TranslationsBasicEn implements TranslationsBasicJa {
	_TranslationsBasicEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Basic Screen';
}

// Path: custom
class _TranslationsCustomEn implements TranslationsCustomJa {
	_TranslationsCustomEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Custom Screen';
}

// Path: counter
class _TranslationsCounterEn implements TranslationsCounterJa {
	_TranslationsCounterEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Counter Screen';
	@override String get tap_count => 'Number of times the button was tapped:';
}

// Path: liquid_swipe
class _TranslationsLiquidSwipeEn implements TranslationsLiquidSwipeJa {
	_TranslationsLiquidSwipeEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Liquid Swipe Screen';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'basic.title': return 'Basic Screen';
			case 'custom.title': return 'Custom Screen';
			case 'counter.title': return 'Counter Screen';
			case 'counter.tap_count': return 'Number of times the button was tapped:';
			case 'liquid_swipe.title': return 'Liquid Swipe Screen';
			default: return null;
		}
	}
}

