// GENERATED CODE - DO NOT MODIFY BY HAND
import "package:flutter/material.dart";
import "package:intl/intl.dart";
import "intl/messages_all.dart";

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        "No instance of S was loaded. Try to initialize the S delegate before accessing S.current.",);
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        "No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?",);
    return instance!;
  }

  static S? maybeOf(BuildContext context) => Localizations.of<S>(context, S);

  /// `Hello World!`
  String get helloWorld => Intl.message(
      "Hello World!",
      name: "helloWorld",
      desc: "",
      args: [],
    );

  /// `Get Cooking`
  String get mainWord => Intl.message(
      "Get Cooking",
      name: "mainWord",
      desc: "",
      args: [],
    );

  /// `Get Cooking`
  String get main => Intl.message(
      "Get Cooking",
      name: "main",
      desc: "",
      args: [],
    );

  /// `Going back to my home`
  String get goHome => Intl.message(
      "Going back to my home",
      name: "goHome",
      desc: "",
      args: [],
    );

  /// `My City`
  String get city => Intl.message(
      "My City",
      name: "city",
      desc: "",
      args: [],
    );
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales => const <Locale>[
      Locale.fromSubtags(languageCode: "en"),
      Locale.fromSubtags(languageCode: "ru"),
      Locale.fromSubtags(languageCode: "uz"),
    ];

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
