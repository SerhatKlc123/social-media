import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/fonts.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({Key? key, required this.iconColor}) : super(key: key);
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Locale>(
      icon: Icon(
        Icons.language,
        color: iconColor,
        size: 27.r,
      ),
      splashRadius: 20.r,
      onSelected: (Locale locale) {
        context.setLocale(locale);
        Get.updateLocale(locale);
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem<Locale>(
            value: Locale('en', 'US'),
            child: Text('English'),
            textStyle: monserrat_medium.copyWith(fontSize: 13.sp),
          ),
          PopupMenuItem<Locale>(
            value: Locale('tr', 'TR'),
            child: Text('Türkçe'),
            textStyle: monserrat_medium.copyWith(fontSize: 13.sp),
          ),
        ];
      },
    );
  }
}
