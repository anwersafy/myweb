import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 241, 215),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 1000.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 80.0),
                const Text(
                  "About Us",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Santana',
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text('Our team has been working tirelessly to create a system that is both efficient and sustainable, and we believe that our smart farm is a game-changer in the agricultural industry. Through the integration of IoT technology, we are able to collect data in real-time to monitor the health and growth of crops, as well as the overall environment in which they are grown. This data is then analyzed and used to make informed decisions about watering, fertilizing, and other important aspects of crop management.',style:
                  TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                  ),
                const SizedBox(height: 20.0),
                const Text('In addition to the IoT technology, our team has also developed a mobile app that allows farmers to control a robot that is used for tasks such as planting, harvesting, and weed control. This not only saves time and labor costs, but also ensures that these tasks are carried out with precision and accuracy, leading to higher yields and better quality crops.',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "We are proud to say that our smart farm is already being used by several farmers in the area, with great success. The feedback we have received has been overwhelmingly positive, and we are confident that this technology will continue to revolutionize the way crops are grown and managed.",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
                const SizedBox(height: 20.0),
                IconButton(onPressed:(){
                  Navigator.pop(context);
                } ,
                    icon: const Icon(Icons.arrow_back_ios_rounded)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
