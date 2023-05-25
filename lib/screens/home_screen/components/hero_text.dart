import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../about_us/about_us.dart';

class HeroText extends StatelessWidget {
  const HeroText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CappucinoTitle(),
        SizedBox(height: 40.0),
        AboutCappucino(),
        SizedBox(height: 20.0),
        SizedBox(height: 10.0),
        BuyNowButton(),
      ],
    );
  }
}

class BuyNowButton extends StatelessWidget {
  const BuyNowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AboutUs()));

      },
      child: Container(
        alignment: Alignment.center,
        width: 150.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Explore More",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                // fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.navigate_next_rounded,
                color: Colors.deepOrangeAccent, size: 30.0),
          ],
        ),
      ),
    );
  }
}


class AboutCappucino extends StatelessWidget {
  const AboutCappucino({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      "A smart farm is an agricultural system that uses advanced technologies such as the Internet of Things (IoT), sensors, automation, and data analytics to optimize farming operations and improve productivity. The main objective of smart farming is to increase efficiency, reduce costs, and minimize the environmental impact of agriculture.",
      style: TextStyle(
        color: Colors.black,
        fontSize: 18.0,
      ),
    );
  }
}

class CappucinoTitle extends StatelessWidget {
  const CappucinoTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AutoSizeText(
      "Smart\n Farm",
      maxLines: 2,
      style: TextStyle(
        color: Colors.black,
        fontSize: 40.0,
        fontWeight: FontWeight.w900,
        fontFamily: 'Santana',
      ),
    );
  }
}
