import 'package:flutter/material.dart';
import 'package:test_app/models/Cart.dart';
import 'package:test_app/models/Product.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';

// stateful widget
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Product> _products = <Product>[];

  List<Cart> _cardList = <Cart>[];

  @override
  void initState() {
    super.initState();
    _populateProducts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(cart: _cardList),
            SizedBox(height: getProportionateScreenWidth(10)),
            DiscountBanner(),
            Categories(),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(products: _products, cart: _cardList),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }

  void _populateProducts() {
    var list = demoProducts;
    setState(() {
      _products = list;
      _cardList = [];
    });
  }
}
