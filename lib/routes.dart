import 'package:flutter/widgets.dart';
import 'package:test_app/models/Cart.dart';
// import 'package:shop_app/screens/cart/cart_screen.dart';
// import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
// import 'package:shop_app/screens/details/details_screen.dart';
// import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
// import 'package:shop_app/screens/home/home_screen.dart';
// import 'package:shop_app/screens/login_success/login_success_screen.dart';
// import 'package:shop_app/screens/otp/otp_screen.dart';
// import 'package:shop_app/screens/profile/profile_screen.dart';
// import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
// import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:test_app/screens/cart/cart_screen.dart';
import 'package:test_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:test_app/screens/details/details_screen.dart';
import 'package:test_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:test_app/screens/home/home_screen.dart';
import 'package:test_app/screens/login_success/login_success_screen.dart';
import 'package:test_app/screens/otp/otp_screen.dart';
import 'package:test_app/screens/profile/profile_screen.dart';
import 'package:test_app/screens/sign_in/sign_in_screen.dart';
import 'package:test_app/screens/splash/splash_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(cart: <Cart>[]),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
