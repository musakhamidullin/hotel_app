import 'package:flutter/material.dart';

final themeData = ThemeData(
  fontFamily: 'SF Pro Display',
  textTheme: _textTheme,
  primaryColor: primary,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: primary),
  expansionTileTheme: _expansionTileTheme,
  canvasColor: Colors.white,
  highlightColor: Colors.transparent,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  cardTheme: _cardTheme,
  dialogTheme: _dialogTheme,
  elevatedButtonTheme: _elevatedButtonTheme,
  inputDecorationTheme: _inputDecorationTheme,
  appBarTheme: _appBarTheme,
);

final _dialogTheme = DialogTheme(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
);

const _textTheme = TextTheme(labelLarge: TextStyle(fontSize: 16));

const _expansionTileTheme = ExpansionTileThemeData(
    childrenPadding: EdgeInsets.symmetric(horizontal: 8));

final _elevatedButtonTheme = ElevatedButtonThemeData(
  style: ButtonStyle(
    padding: MaterialStateProperty.all<EdgeInsets>(
      const EdgeInsets.all(14),
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),
);
final _cardTheme = CardTheme(
  elevation: 4,
  shadowColor: Colors.grey.withOpacity(0.5),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
);
const _appBarTheme = AppBarTheme(
    centerTitle: true,
    color: Colors.white,
    foregroundColor: Colors.black87,
    shadowColor: Colors.transparent);

final _inputDecorationTheme = InputDecorationTheme(
  filled: true,
  fillColor: Colors.white,
  border: const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
      width: 1.0,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(
        12,
      ),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: const BorderRadius.all(
      Radius.circular(
        12,
      ),
    ),
    borderSide: BorderSide(color: Colors.grey.shade200),
  ),
  focusedBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Color(_primaryAccentValue)),
    borderRadius: BorderRadius.all(
      Radius.circular(
        12,
      ),
    ),
  ),
);

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFE0E0E0),
  100: Color(0xFFB3B3B3),
  200: Color(0xFF808080),
  300: Color(0xFF4D4D4D),
  400: Color(0xFF262626),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF000000),
  700: Color(0xFF000000),
  800: Color(0xFF000000),
  900: Color(0xFF000000),
});
const int _primaryPrimaryValue = 0xFFf0be5a;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFA6A6A6),
  200: Color(_primaryAccentValue),
  400: Color(0xFF737373),
  700: Color(0xFF666666),
});
const int _primaryAccentValue = 0xFFf0be5a;

EdgeInsets horizontalSymmetricPadding([double intent = 1]) {
  return EdgeInsets.symmetric(horizontal: 8 * intent);
}

EdgeInsets horizontalVerticalSymmetricPadding([double intent = 1]) {
  return EdgeInsets.symmetric(horizontal: 8 * intent, vertical: 8 * intent);
}

SizedBox get shrink => const SizedBox.shrink();

SizedBox setSpace([double intent = 1]) {
  return SizedBox(
    height: 16 * intent,
  );
}
