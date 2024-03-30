import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quick_connect/screens/auth/register.dart';
import 'package:quick_connect/screens/navbar/home.dart';
import 'package:quick_connect/screens/on_boarding.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final _box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: 'images/logo.png',
        duration: 3500,
        centered: true,
        splashIconSize: 190.r,
        nextScreen:
        _box.read('page') == 2 ? NavbarBase() : _box.read('page') == 1 ? RegisterScreen() : OnBoardingScreen(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
