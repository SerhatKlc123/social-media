import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quick_connect/screens/navbar/contacts.dart';
import 'package:quick_connect/screens/navbar/message.dart';
import 'package:quick_connect/screens/navbar/profile.dart';
import 'package:quick_connect/screens/navbar/search.dart';
import 'package:quick_connect/utils/load.dart';
import 'package:quick_connect/utils/project_colors.dart';

class NavbarBase extends StatelessWidget {
  NavbarBase({Key? key}) : super(key: key);
  final box = GetStorage();
  final _pages = [HomeScreen(), MessageScreen(), SearchScreen(), ProfileScreen()];
  final _index = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: shadow.withOpacity(0.5),
            floatingActionButton: FloatingActionButton(
              backgroundColor: pastelYellow,
              onPressed: () => null,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 30.sp,
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: Obx(
              () => AnimatedBottomNavigationBar(
                icons: [Icons.home, Icons.message, Icons.search, Icons.person],
                activeIndex: _index.value,
                gapLocation: GapLocation.none,
                backgroundColor: Colors.white,
                activeColor: pastelYellow,
                height: 65.h,
                iconSize: 30.r,
                inactiveColor: Colors.black.withOpacity(0.15),
                splashRadius: 30.r,
                splashColor: pastelYellow,
                elevation: 2,
                borderWidth: 3.w,
                borderColor: Colors.black.withOpacity(0.02),
                leftCornerRadius: 20.r,
                rightCornerRadius: 20.r,
                onTap: (index) => _index.value = index,
              ),
            ),
            extendBody: true,
            body: Obx(() =>
                _pages[_index.value])),
      ),
    );
  }
}
