import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techofv/constants/colors.dart';
import 'package:techofv/constants/text_styles.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    _updateStatud();
    super.initState();
  }

  void _updateStatud() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.menu, size: 35),
                  Image.asset(
                    'assets/images/tov.png',
                    height: size.height / 13,
                  ),
                  Icon(Icons.search, size: 35),
                ],
              ),
              SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    width: size.width / 1.1,
                    height: size.height / 4.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: Image.asset(
                          'assets/images/banner1.jpg',
                          fit: BoxFit.cover,
                        ).image,
                      ),
                    ),
                    foregroundDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        colors: gradients.poster.colors,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 8,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'عارف موسوی - 2 ساعت پیش',
                              style: TextStyles.SubTitle,
                            ),
                            Text('Like 230', style: TextStyles.SubTitle),
                          ],
                        ),
                        Text(
                          ' اولین قدم به دنیای تکنولوژی و ...',
                          style: TextStyles.Title,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
