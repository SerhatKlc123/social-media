import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quick_connect/screens/auth/register.dart';
import 'package:quick_connect/screens/navbar/home.dart';
import 'package:quick_connect/widgets/button.dart';
import 'package:quick_connect/widgets/language.dart';

import '../../utils/fonts.dart';
import '../../utils/load.dart';
import '../../utils/project_colors.dart';
import '../../widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final _email = TextEditingController();
  final _password = TextEditingController();
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.focusScope?.unfocus(),
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: EdgeInsets.all(20.r),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 35.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'images/logo.png',
                                          height: 50.h,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.w),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  tr("w"),
                                                  style: monserrat_semi_bold
                                                      .copyWith(
                                                          color: pastelYellow,
                                                          fontSize: 25.r),
                                                ),
                                                Text(
                                                  tr("r1"),
                                                  style:
                                                      monserrat_medium.copyWith(
                                                          color: Colors.black
                                                              .withOpacity(0.6),
                                                          fontSize: 15.sp),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 25.h),
                                      child: CustomTextField(
                                        title: 'e',
                                        hint: 'eh',
                                        iconData: Icons.email,
                                        textEditingController: _email,
                                      )),
                                  CustomTextField(
                                    title: 'p',
                                    hint: 'ph',
                                    iconData: Icons.key,
                                    textEditingController: _password,
                                  ),
                                  const Spacer(),
                                  AppButton(
                                      onPressed: () {
                                        box.write("page", 2);
                                        Get.off(()=> NavbarBase());
                                      },
                                      backgroundColor: pastelYellow,
                                      title: 'l',
                                      textColor: Colors.white),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        tr('dha'),
                                        style: monserrat_medium.copyWith(
                                            fontSize: 14.sp),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      TextButton(
                                          onPressed: () => Get.offAll(
                                              () => RegisterScreen()),
                                          style: TextButton.styleFrom(
                                              foregroundColor:
                                                  pastelGreen.withOpacity(0.5)),
                                          child: Text(
                                            tr('reg'),
                                            style: monserrat_semi_bold.copyWith(
                                                fontSize: 14.sp,
                                                color: pastelGreen),
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          LanguageSelector(
                            iconColor: pastelGreen,
                          )
                        ],
                      ),
              )),
        ),

    );
  }
}
