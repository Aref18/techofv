import 'package:flutter/material.dart';
import 'package:techofv/View/splashscreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
