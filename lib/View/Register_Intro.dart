import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techofv/constants/text_styles.dart';

class RegisterIntro extends StatefulWidget {
  const RegisterIntro({super.key});

  @override
  State<RegisterIntro> createState() => _RegisterIntroState();
}

class _RegisterIntroState extends State<RegisterIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/ai.svg', height: 200),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: """
به تک وی خوش آمدید

برای ارسال مطلب و پادکست حتما باید
ثبت نام کنی
""",
                  style: TextStyles.ProName,
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateColor.resolveWith((states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.lightBlueAccent;
                  }
                  return Colors.blue;
                }),
                textStyle: WidgetStateTextStyle.resolveWith((states) {
                  if (states.contains(WidgetState.pressed)) {
                    return const TextStyle(fontSize: 25);
                  }
                  return const TextStyle(fontSize: 20);
                }),
              ),
              onPressed: () {},
              child: Text('بزن بریم'),
            ),
          ],
        ),
      ),
    );
  }
}
