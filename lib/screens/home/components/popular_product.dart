import 'package:flutter/material.dart';
// import 'package:shop_app/components/product_card.dart';
// import 'package:shop_app/models/Product.dart';
import 'package:test_app/components/product_card.dart';
import 'package:test_app/models/Product.dart';
import 'package:test_app/models/Cart.dart';

import '../../../size_config.dart';
import 'section_title.dart';

// create StatefulWidget PopularProducts
class PopularProducts extends StatefulWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  _PopularProducts createState() => _PopularProducts();
}

class _PopularProducts extends State<PopularProducts> {
  List<Product> _products = <Product>[];

  List<Cart> _cardList = <Cart>[];

  @override
  void initState() {
    super.initState();
    _populateProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Popular Products", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                _products.length,
                (index) {
                  if (_products[index].isPopular) {
                    return ProductCard(product: _products[index], cart: _cardList);
                  }
                  return const SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }

  void _populateProducts() {
    var list = demoProducts;
    setState(() {
      _products = list;
    });
  }
}
