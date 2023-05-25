import 'package:flutter/material.dart';
import 'package:starbucks_landing_page/result/result_one.dart';

import '../../../about_project/about_project.dart';
import '../../../about_us/about_us.dart';
import '../../../constants.dart';
import '../../../contact_us/contact_us.dart';
import '../../components.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kBackgroundColor,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
        // height: double.infinity,
        // width: double.infinity,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: double.infinity),
              const SizedBox(height: 30.0),
              const SizedBox(height: 30.0),

              // const Divider(thickness: 2.0),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      NavbarItem(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs())  );
                        } ,

                        title: 'About Us',
                      ),
                      SizedBox(height: 10.0),
                      Divider(thickness: 1.0),
                      NavbarItem(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AboutProject())  );
                        } ,
                        title: 'About Project',
                      ),
                      SizedBox(height: 10.0),
                      Divider(thickness: 1.0),
                      NavbarItem(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Result())  );
                        } ,
                        title: 'Services',
                      ),
                      SizedBox(height: 10.0),
                      Divider(thickness: 1.0),
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
                  return const Divider(thickness: 1.0);
                },
                itemCount: 1,
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
