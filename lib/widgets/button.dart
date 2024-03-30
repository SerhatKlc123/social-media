import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/fonts.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {Key? key,
      required this.onPressed,
      required this.backgroundColor,
      required this.title, required this.textColor, this.elevation})
      : super(key: key);
  final Function() onPressed;
  final Color backgroundColor, textColor;
  final String title;
  final double ? elevation;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          backgroundColor: backgroundColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
          fixedSize: Size(MediaQuery.of(context).size.width, 50.h),
        ),
        child: Text(
          tr(title),
          style: monserrat_semi_bold.copyWith(
              color: textColor, fontSize: 17.sp),
        ));
  }
}
