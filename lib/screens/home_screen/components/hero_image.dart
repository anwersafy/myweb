import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lottie/lottie.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({
    Key? key,
    this.imageHeight = 300.0,
    this.circleRadius = 180.0,
    this.bottom = 50.0,
    this.imageWidth,
  }) : super(key: key);
  final double imageHeight;
  final double circleRadius;
  final double bottom;
  final double? imageWidth;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: circleRadius+10,
          backgroundColor: Colors.deepOrange.shade400,
          child: Positioned(
            bottom: bottom,
            child:CircleAvatar(
              radius: circleRadius,
              backgroundImage: const AssetImage(
                'assets/images/6037944.jpg',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
