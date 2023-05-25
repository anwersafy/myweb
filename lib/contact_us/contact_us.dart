import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 241, 215),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('Contact Us')),
          SizedBox(height: 20,),
          IconButton(onPressed:(){
            Navigator.pop(context);
          } ,
              icon: const Icon(Icons.arrow_back_ios_rounded)),

        ],
      ),

    );
  }
}
