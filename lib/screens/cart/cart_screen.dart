import 'package:flutter/material.dart';
//import 'package:shop_app/models/Cart.dart';
import 'package:test_app/models/Cart.dart';

import 'components/body.dart';
import 'components/check_out_card.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  const CartScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartScreenArguments agrs =
        ModalRoute.of(context)!.settings.arguments as CartScreenArguments;
    return Scaffold(
      appBar: buildAppBar(context, agrs),
      body: Body(cart: agrs.cart),
      bottomNavigationBar: const CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context, CartScreenArguments agrs) {
    return AppBar(
      title: Column(
        children: [
          const Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${agrs.cart.length} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}

class CartScreenArguments {
  final List<Cart> cart;

  CartScreenArguments({required this.cart});
}
