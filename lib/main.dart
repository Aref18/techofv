import 'package:flutter/material.dart';
import 'package:techofv/screens/splashscreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const TechOfV());
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
        Locale('en'), // English
        Locale('fa'), // farsi
      ],
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
