import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/Screenshot_2023-05-24_013754-removebg-preview.png', height: 65.0,),
        const SizedBox(width: 10.0),
        Image.asset('assets/images/smart-removebg-preview.png', height: 35.0),
      ],
    );
  }
}
