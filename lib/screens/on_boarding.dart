import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:quick_connect/controllers/on_boarding.dart';
import 'package:quick_connect/utils/fonts.dart';
import 'package:quick_connect/utils/project_colors.dart';
import 'package:quick_connect/widgets/button.dart';
import 'package:quick_connect/widgets/language.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  final _controller = Get.put(ObController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Obx(() => Stack(
                alignment: Alignment.topRight,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.r),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            _ProgressDot(
                              func: () => _controller.index.value = 0,
                              size: _controller.index.value == 0 ? 12 : 10,
                              color: _controller.index.value == 0
                                  ? pastelYellow
                                  : shadow,
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: _ProgressDot(
                                  func: () => _controller.index.value = 1,
                                  size: _controller.index.value == 1 ? 12 : 10,
                                  color: _controller.index.value == 1
                                      ? pastelYellow
                                      : shadow,
                                )),
                            _ProgressDot(
                              func: () => _controller.index.value = 2,
                              size: _controller.index.value == 2 ? 12 : 10,
                              color: _controller.index.value == 2
                                  ? pastelYellow
                                  : shadow,
                            ),
                          ],
                        ),
                        Transform.scale(
                          scale: _controller.index.value == 1 ? 2 : 1,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: _controller.index.value == 1
                                    ? 120.h
                                    : 45.h),
                            child: LottieBuilder.asset(
                              _controller.animations[_controller.index.value],
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(bottom: 15.h),
                            child: Text(
                              tr(_controller.title[_controller.index.value]),
                              style: monserrat_bold.copyWith(fontSize: 21.sp),
                              textAlign: TextAlign.center,
                            )),
                        Text(
                          tr(_controller.subTitle[_controller.index.value]),
                          style: monserrat_medium.copyWith(
                              fontSize: 17.sp,
                              color: erieBlack.withOpacity(0.5)),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(),
                        AppButton(
                            textColor: Colors.white,
                            onPressed: () => _controller.goNext(),
                            backgroundColor: pastelYellow,
                            title: _controller.index.value == 2 ? "gs" : "ne"),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextButton(
                            onPressed: () => _controller.skip(),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: pastelYellow,
                              fixedSize:
                                  Size(MediaQuery.of(context).size.width, 50.h),
                            ),
                            child: Text(
                              tr("sk"),
                              style: monserrat_semi_bold.copyWith(
                                  color: pastelYellow, fontSize: 17.sp),
                            ))
                      ],
                    ),
                  ),
                  LanguageSelector(iconColor: pastelGreen),
                ],
              )),
        ),
      ),
    );
  }
}

class _ProgressDot extends StatelessWidget {
  const _ProgressDot(
      {Key? key, required this.size, required this.color, required this.func})
      : super(key: key);
  final int size;
  final Color color;
  final Function() func;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(1000.r)),
        width: size.w,
        height: size.h,
      ),
    );
  }
}
