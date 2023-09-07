import 'package:flutter/material.dart';

const radius = Radius.circular(16);

const grey = Color.fromRGBO(130, 135, 150, 1);

const paddingDivided = SizedBox(height: 8);

const padding = SizedBox(height: 16);

const padding2x = SizedBox(height: 32);

const paddingWidget = EdgeInsets.symmetric(horizontal: 16);

const paddingWidgetDivided = EdgeInsets.symmetric(horizontal: 8);

const Color rateColor = Color.fromRGBO(255, 168, 0, 1);

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
    textStyle:
        const MaterialStatePropertyAll(TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
    padding: MaterialStateProperty.all<EdgeInsets>(
      const EdgeInsets.all(14),
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
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
  50: Color(0xFFE2EEFF),
  100: Color(0xFFB6D5FF),
  200: Color(0xFF86B9FF),
  300: Color(0xFF569CFF),
  400: Color(0xFF3187FF),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF0B6AFF),
  700: Color(0xFF095FFF),
  800: Color(0xFF0755FF),
  900: Color(0xFF0342FF),
});
const int _primaryPrimaryValue = 0xFF0D72FF;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFFBFCCFF),
  700: Color(0xFFA6B7FF),
});
const int _primaryAccentValue = 0xFFF2F5FF;
