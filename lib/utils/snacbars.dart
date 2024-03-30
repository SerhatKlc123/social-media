import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quick_connect/utils/fonts.dart';
import 'package:quick_connect/utils/project_colors.dart';

void successBar(String message) => Get.snackbar(
      '',
      '',
      margin: EdgeInsets.all(10.r),
      icon: Icon(
        Icons.celebration,
        color: pastelGreen,
        size: 28.r,
      ),
      borderRadius: 15.r,
      borderColor: pastelGreen.withOpacity(0.05),
      borderWidth: 1.5.w,
      shouldIconPulse: true,
      barBlur: 12,
      titleText: Text(tr("suc"),
          style: monserrat_semi_bold.copyWith(
              fontSize: 15.sp, color: pastelGreen)),
      messageText: Text(message,
          style: monserrat_medium.copyWith(
              fontSize: 14.sp, color: pastelGreen.withOpacity(0.9))),
      backgroundColor: pastelGreen.withOpacity(0.075),
    );

void errorBar(String message) => Get.snackbar(
      '',
      '',
      margin: EdgeInsets.all(10.r),
      icon: Icon(
        Icons.announcement,
        color: pastelRed,
        size: 28.r,
      ),
      borderRadius: 15.r,
      borderColor: pastelRed.withOpacity(0.035),
      borderWidth: 1.5.w,
      shouldIconPulse: true,
      barBlur: 12,
      titleText: Text(tr("err"),
          style:
              monserrat_semi_bold.copyWith(fontSize: 15.sp, color: pastelRed)),
      messageText: Text(message,
          style: monserrat_medium.copyWith(
              fontSize: 14.sp, color: pastelRed.withOpacity(0.9))),
      backgroundColor: pastelRed.withOpacity(0.05),
    );
