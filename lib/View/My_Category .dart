import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techofv/Models/fake_data.dart';
import 'package:techofv/constants/text_styles.dart';

class MyCategory extends StatefulWidget {
  MyCategory({super.key});

  @override
  State<MyCategory> createState() => _MyCategoryState();
}

class _MyCategoryState extends State<MyCategory> {
  List AddTags = [];

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
                SizedBox(height: 20),
                Text(
                  'دسته بندی هایی که دوست داری را انتخاب کن',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: TagList.map((tag) {
                    return ElevatedButton(
                      child: Text("# ${tag.Title}", style: TextStyles.HashTgs),
                      style: ButtonStyle(
                        foregroundColor: WidgetStateProperty.all<Color>(
                          Colors.black,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          if (AddTags.length < 6) {
                            if (!AddTags.contains(tag)) {
                              AddTags.add(tag);
                            }
                          }
                        });
                      },
                    );
                  }).toList(),
                ),

                SizedBox(height: 20),
                Image.asset('assets/images/flash.png', scale: 8),
                SizedBox(height: 10),

                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: AddTags.map((tag) {
                    return Chip(
                      label: Text("${tag.Title}", style: TextStyles.HashTgs),
                      backgroundColor: const Color.fromARGB(255, 50, 61, 67),
                      deleteIcon: const Icon(Icons.close, color: Colors.white),
                      onDeleted: () {
                        setState(() {
                          AddTags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
