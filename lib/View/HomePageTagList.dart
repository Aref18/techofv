import 'package:flutter/material.dart';
import 'package:techofv/Models/fake_data.dart';
import 'package:techofv/constants/colors.dart';
import 'package:techofv/constants/text_styles.dart';

class HomePageTagList extends StatelessWidget {
  const HomePageTagList({super.key, required this.BodyMargin});

  final double BodyMargin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: TagList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                0,
                5,
                index == 0 ? BodyMargin : 34,
                20,
              ),
              child: Container(
                height: 80,

                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: gradients.Tags.colors,
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                  child: Row(
                    children: [
                      Icon(Icons.tag, color: Colors.white),
                      SizedBox(width: 8),
                      Text(TagList[index].Title, style: TextStyles.TagStyle),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
