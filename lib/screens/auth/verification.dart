import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lottie/lottie.dart';
import 'package:pinput/pinput.dart';
import 'package:quick_connect/utils/fonts.dart';
import 'package:quick_connect/utils/load.dart';
import 'package:quick_connect/utils/project_colors.dart';

import '../navbar/home.dart';

class VerificationScreen extends StatelessWidget {
  VerificationScreen({Key? key}) : super(key: key);
  final _pin = TextEditingController();
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Get.focusScope?.unfocus(),
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            body: Padding(
                padding: EdgeInsets.all(20.r),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      LottieBuilder.asset(
                        'animations/verify.json',
                        height: 275.h,
                      ),
                      Text(
                        'test...@mail.com ${tr('cs')}',
                        style: monserrat_medium.copyWith(
                            color: pastelYellow, fontSize: 16.sp),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        tr('cf'),
                        style: monserrat_medium.copyWith(
                            color: erieBlack.withOpacity(0.5), fontSize: 14.sp),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 50.h),
                        child: Pinput(
                          onCompleted: (code){
                            box.write('page', 2);
                            Get.offAll(() => NavbarBase());
                          },
                          controller: _pin,
                          pinAnimationType: PinAnimationType.scale,
                          defaultPinTheme: PinTheme(
                            width: 56.w,
                            height: 56.h,
                            textStyle: monserrat_semi_bold.copyWith(fontSize: 20.sp, color: pastelYellow, fontWeight: FontWeight.w600),
                            decoration: BoxDecoration(
                              border: Border.all(color: pastelYellow.withOpacity(0.5),width: 0.75.r),
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                          ),
                        ),
                      ),
                      Text(tr('dr'),style: monserrat_medium.copyWith(color: pastelGreen.withOpacity(0.8), fontSize: 14.sp),),
                      SizedBox(height: 5.h,),
                      GestureDetector(
                          onTap: ()=> null,
                          child: Text(tr('tg'),style: monserrat_medium.copyWith(color: pastelGreen, fontSize: 14.sp, decoration: TextDecoration.underline),)),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

    );
  }
}
