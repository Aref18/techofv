import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techofv/constants/text_styles.dart';

class MyCategory extends StatelessWidget {
  MyCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                SvgPicture.asset('assets/images/ai.svg', height: 200),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    "تبریک میگم ایمیلت با موفقیت تایید شد لطفا ثبت نام را کامل کن",
                    style: TextStyles.ProName,
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                  child: TextField(
                    decoration: InputDecoration(hintText: "نام و نام خانوادگی"),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'دسته بندی هایی که دوست داری را انتخاب کن',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                // ListView.builder(
                //   itemCount: 6,
                //   itemBuilder: (context, index) {
                //     return Container(
                //       height: 50,
                //       width: 50,
                //       color: Colors.black,
                //       child: Center(
                //         child: Text(
                //           'برنامه نویسی#',
                //           style: TextStyles.TextButton,
                //         ),
                //       ),
                //     );
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
