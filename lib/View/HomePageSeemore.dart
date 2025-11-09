import 'package:flutter/material.dart';
import 'package:techofv/constants/text_styles.dart';

class HomePageSeemore extends StatelessWidget {
  const HomePageSeemore({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 35),
      child: Row(
        children: [
          Icon(Icons.edit, size: 35, color: Colors.deepPurple),
          SizedBox(width: 10),
          Text('مشاهده داغ ترین نوشته ها', style: TextStyles.Title2),
        ],
      ),
    );
  }
}
