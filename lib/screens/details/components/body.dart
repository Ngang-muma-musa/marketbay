import 'package:flutter/material.dart';
// import 'package:shop_app/components/default_button.dart';
// import 'package:shop_app/models/Product.dart';
// import 'package:shop_app/size_config.dart';
import 'package:test_app/components/default_button.dart';
import 'package:test_app/models/Cart.dart';
import 'package:test_app/models/Product.dart';
import 'package:test_app/size_config.dart';

import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

// the stateful widget
class Body extends StatefulWidget {
  final Product product;
  final List<Cart> cart;

  const Body({Key? key, required this.product, required this.cart})
      : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: widget.product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: widget.product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: widget.product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefaultButton(
                          text: "Add To Cart",
                          press: () {
                            setState(() {
                              if (widget.cart.any((element) =>
                                  element.product.id == widget.product.id)) {
                                widget.cart
                                    .firstWhere((element) =>
                                        element.product.id == widget.product.id)
                                    .numOfItem++;
                              } else {
                                widget.cart.add(Cart(
                                  product: widget.product,
                                  numOfItem: 1,
                                ));
                              }
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
