import 'package:flutter/material.dart';

class divider extends StatelessWidget {
  const divider({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 2,
      indent: size.width / 6,
      endIndent: size.width / 6,
      color: Colors.black45,
    );
  }
}

class divider2 extends StatelessWidget {
  const divider2({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Divider(thickness: 2, color: Colors.black45);
    ;
  }
}
