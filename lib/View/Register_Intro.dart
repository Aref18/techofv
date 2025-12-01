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
      backgroundColor: Colors.white,

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
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  backgroundColor: WidgetStateColor.resolveWith((states) {
                    if (states.contains(WidgetState.pressed)) {
                      return Colors.lightBlueAccent;
                    }
                    return Colors.blue;
                  }),
                  textStyle: WidgetStateTextStyle.resolveWith((states) {
                    if (states.contains(WidgetState.pressed)) {
                      return TextStyles.RegButton.copyWith(fontSize: 35);
                    }
                    return TextStyles.RegButton.copyWith(fontSize: 30);
                  }),
                ),
                onPressed: () {},
                child: Text('بزن بریم', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
