import 'package:flutter/material.dart';

class AboutProject extends StatelessWidget {
  const AboutProject({Key? key}) : super(key: key);

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
                  "About Project",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Santana',
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text('A smart farm is an agricultural system that uses advanced technologies such as the Internet of Things (IoT), sensors, automation, and data analytics to optimize farming operations and improve productivity. The main objective of smart farming is to increase efficiency, reduce costs, and minimize the environmental impact of agriculture.',style:
                TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
                ),
                const SizedBox(height: 20.0),
                const Text('Smart farming involves the use of sensors to collect data on soil moisture, temperature, humidity, and other environmental factors. This data is then analyzed to provide insights into crop growth, water usage, and other aspects of farming that can be optimized for higher yields and better quality crops.',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "Automation systems are also used in smart farming to reduce labor costs and improve efficiency. For example, automated irrigation systems can be set up to water crops based on real-time data collected by sensors, reducing water waste and ensuring that crops receive the optimal amount of water.",
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
