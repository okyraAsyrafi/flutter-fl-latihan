import 'package:flutter/material.dart';
import 'package:shamo_tryit/pages/checkout_page.dart';
import 'package:shamo_tryit/pages/checkout_success_page.dart';
import 'package:shamo_tryit/pages/detail_chat_page.dart';
import 'package:shamo_tryit/pages/edit_profile_page.dart';
import 'package:shamo_tryit/pages/cart_page.dart';
import 'package:shamo_tryit/pages/home/main_page.dart';
import 'package:shamo_tryit/pages/product_page.dart';
import 'package:shamo_tryit/pages/sign_in_page.dart';
import 'package:shamo_tryit/pages/sign_up_page.dart';
import 'package:shamo_tryit/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shamo Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        'detail-chat': (context) => DetailChatPage(),
        '/edit-profile': (context) => EditProfilePage(),
        '/product': (context) => ProductPage(),
        '/cart': (context) => CartPage(),
        '/checkout': (context) => CheckoutPage(),
        '/checkout-success': (context) => CheckoutSuccessPage(),
      },
    );
  }
}
