import 'package:flutter/material.dart';
import 'package:starbucks_landing_page/about_project/about_project.dart';

import '../../../about_us/about_us.dart';
import '../../../contact_us/contact_us.dart';
import '../../../result/result_one.dart';

// navbar_items

class NavbarItems extends StatelessWidget {
  const NavbarItems({
    Key? key,
    this.isMobile = false,
  }) : super(key: key);
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: isMobile ? Axis.vertical : Axis.horizontal,
      itemBuilder: (context, index) {
        return Row(
          children: [
            NavbarItem(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs())  );
              } ,

              title: 'About Us',
            ),
            NavbarItem(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutProject())  );
              } ,
              title: 'About Project',
            ),
            NavbarItem(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Result())  );
              } ,
              title: 'Services',
            ),
            NavbarItem(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUs())  );
              } ,
              title: 'Contact Us',
            ),
          ],
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(width: 30.0);
      },
      shrinkWrap: true, itemCount: 1,
    );
  }
}

class NavbarItem extends StatelessWidget {
   NavbarItem({
    Key? key,
    required this.title,
    this.onPressed,

  }) : super(key: key);
  final String title;
  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:onPressed,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20.0,
        ),
      ),
    );
  }
}
