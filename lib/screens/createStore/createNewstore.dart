import 'package:flutter/material.dart';

import 'components/body.dart';

class CreateNewStore extends StatelessWidget {
  static String routeName = "/sign_up";

  const CreateNewStore({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: const Body(),
    );
  }
}
