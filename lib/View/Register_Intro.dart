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
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 250,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(10.0),
                              topRight: const Radius.circular(10.0),
                            ),
                          ),
                          child: Center(child: Text("This is a modal sheet")),
                        ),
                      );
                    },
                  );
                },
                child: Text('بزن بریم', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
