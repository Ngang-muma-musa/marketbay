import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../createStore/createNewstore.dart';
import '../../sign_in/sign_in_screen.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const ProfilePic(),
          const SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Create Store",
            icon: "assets/icons/Shop Icon.svg",
            press: () => {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const CreateNewStore())),
            },
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {
              FirebaseAuth.instance.signOut().then((value) {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const SignInScreen()));
              });
            },
          ),
        ],
      ),
    );
  }
}
