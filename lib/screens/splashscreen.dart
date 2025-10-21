import 'dart:async';

import 'package:flutter/material.dart';
import 'package:techofv/screens/HomePage.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splashscreen extends StatefulWidget {
  Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Homepage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 400,

                child: Image.asset('assets/images/logo.png', fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 20),
            SpinKitCircle(color: Colors.green, size: 50.0),
            Container(
              width: double.infinity,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Powered by',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Image.asset(
                    'assets/images/VIC.png',
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
