import 'package:e_commerce/screen/cart/cart_screen.dart';
import 'package:e_commerce/screen/detail/detail_screen.dart';
import 'package:e_commerce/screen/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce/screen/home/home_screen.dart';
import 'package:e_commerce/screen/login_success/login_success_screen.dart';
import 'package:e_commerce/screen/profile/profile_screen.dart';
import 'package:e_commerce/screen/sign_in/sign_in_screen.dart';
import 'package:e_commerce/screen/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
