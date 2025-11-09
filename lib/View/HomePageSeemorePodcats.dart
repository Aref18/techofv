import 'package:flutter/material.dart';
import 'package:techofv/constants/text_styles.dart';

class HomePageSeemorePodcasts extends StatelessWidget {
  const HomePageSeemorePodcasts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 35),
      child: SizedBox(
        height: 80,
        child: Row(
          children: [
            Icon(Icons.mic, size: 35, color: Colors.deepPurple),
            SizedBox(width: 10),
            Text('مشاهده داغ ترین پادکست ها', style: TextStyles.Title2),
          ],
        ),
      ),
    );
  }
}
