import 'package:flutter/material.dart';

import '../../components/default_button.dart';

class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Store"),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/hill-cover.png"),
                  fit: BoxFit.cover,
                )),
              ),
              Container(
                width: double.infinity,
                height: 150,
                color: Colors.black.withOpacity(0.5),
                child: const Center(
                    child: Text(
                  "Standard Shop",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )),
              ),
              Positioned(
                left: 310,
                top: 120,
                width: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
          Expanded(
              child: Center(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "No Items Found",
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 200,
                child: DefaultButton(
                  text: "Upload Item",
                ),
              )
            ],
          )))
        ],
      ),
    );
  }
}
