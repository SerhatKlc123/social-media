import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_connect/utils/fonts.dart';
import 'package:quick_connect/utils/project_colors.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final _dummy = "https://japan-forward.com/wp-content/uploads/2022/05/Mieko-Kawakami.jpg";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.r),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'images/logo.png',
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Text(
                  'Quick '
                  '\nConnect',
                  style: monserrat_semi_bold.copyWith(
                      fontSize: 20.r, color: pastelYellow),
                ),
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: Text(
                '${tr('wb')}, test',
                style: monserrat_medium.copyWith(
                    fontSize: 18.r, color: pastelYellow),
              )),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: Text(
                'My Contacts',
                style: monserrat_medium.copyWith(
                    fontSize: 18.r, color: pastelGreen),
              )),
          Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                itemCount: 10,
                separatorBuilder: (ctx, i) => SizedBox(
                      height: 10.h,
                    ),
                itemBuilder: (ctx, i) => Material(
                      color: Colors.white,
                      elevation: 0.5,
                      shadowColor: shadow,
                      borderRadius: BorderRadius.circular(15.r),
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(15.r),
                        child: Padding(
                          padding: EdgeInsets.all(15.r),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: pastelGreen,
                                radius: 31.r,
                                child: CircleAvatar(
                                  backgroundColor: pastelGreen,
                                  radius: 30.r,
                                  backgroundImage: NetworkImage(_dummy),
                                ),
                              ),
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.r),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'username $i',
                                      style: monserrat_semi_bold.copyWith(
                                          fontSize: 16.sp),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5.h),
                                      child: Text(
                                        'email${i}@mail.com',
                                        style: monserrat_medium.copyWith(
                                            fontSize: 14.sp,
                                            color: erieBlack.withOpacity(0.8)),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                              Icon(
                                Icons.navigate_next,
                                size: 32.r,
                                color: pastelGreen,
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
