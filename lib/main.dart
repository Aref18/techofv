import 'package:flutter/material.dart';
import 'package:techofv/View/splashscreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:techofv/constants/text_styles.dart';

void main() {
  runApp(TechOfV());
}

class TechOfV extends StatelessWidget {
  const TechOfV({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('fa'), // farsi
      ],
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            backgroundColor: WidgetStateColor.resolveWith((states) {
              if (states.contains(WidgetState.pressed)) {
                return Colors.deepPurpleAccent;
              }
              return Colors.deepPurple;
            }),
            textStyle: WidgetStateTextStyle.resolveWith((states) {
              if (states.contains(WidgetState.pressed)) {
                return TextStyles.RegButton.copyWith(fontSize: 35);
              }
              return TextStyles.RegButton.copyWith(fontSize: 30);
            }),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
