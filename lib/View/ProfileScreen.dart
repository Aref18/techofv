import 'package:flutter/material.dart';
import 'package:techofv/Models/date_models.dart';
import 'package:techofv/View/my_component.dart';
import 'package:techofv/constants/text_styles.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key, required this.blog, required this.size});
  final Size size;
  final BlogModel blog;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(blog.WriterimageUrl),
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.edit, color: Colors.blue, size: 30),
                  SizedBox(width: 10),
                  Text('ویرایش عکس پروفایل', style: TextStyles.Title2),
                ],
              ),
              SizedBox(height: 50),
              Text('سید عارف موسوی', style: TextStyles.ProName),
              SizedBox(height: 20),
              Text('arefmoosavi@gmail.com', style: TextStyles.ProGmail),
              SizedBox(height: 50),

              divider(size: size),
              SizedBox(height: 10),
              InkWell(onTap: () {}, child: Text('favorite writes')),
              SizedBox(height: 10),
              divider(size: size),
              SizedBox(height: 10),
              InkWell(onTap: () {}, child: Text('favorite Podcasts')),
              SizedBox(height: 10),
              divider(size: size),
              SizedBox(height: 10),
              InkWell(onTap: () {}, child: Text("Logout")),
              SizedBox(height: 10),

              divider(size: size),
            ],
          ),
        ],
      ),
    );
  }
}
