import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class LoadAnimation extends StatelessWidget {
  const LoadAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LottieBuilder.asset(
        'animations/load.json',
        height: 250.h,
      ),
    );
  }
}
