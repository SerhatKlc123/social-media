import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/fonts.dart';
import '../utils/project_colors.dart';


class CustomTextField extends StatefulWidget {
  final String title, hint;
  final IconData iconData;
  final TextEditingController textEditingController;

  const CustomTextField({super.key, required this.title, required this.hint, required this.iconData, required this.textEditingController});
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isFocused = false;

  final focusNode = FocusNode();

  @override
  void initState() {
    focusNode.addListener(() {
      setState(() {
        focusNode.hasFocus == true ? isFocused = true : isFocused = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 15.h),
          child: Text(
            tr(widget.title),
            style: monserrat_semi_bold.copyWith(fontSize: 13.sp),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: !isFocused ? shadow : pastelGreen.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: !isFocused
                    ? Colors.grey.withOpacity(0.05)
                    : pastelGreen, // Border color when focused or typing
                width: 0.75.w,
              )),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: widget.textEditingController,
                  onTapOutside: (event) {
                    isFocused = false;
                  },
                  focusNode: focusNode,
                  cursorColor: pastelGreen,
                  style: monserrat_regular.copyWith(color: !isFocused ? erieBlack : pastelGreen),
                  minLines: 1,
                  decoration: InputDecoration(
                    hintText: tr(widget.hint),
                    hintStyle: monserrat_regular.copyWith(
                      color: !isFocused ? Colors.black.withOpacity(0.5) : pastelGreen.withOpacity(0.4),),
                    border: InputBorder.none,
                  ),
                  onTap: () {
                    isFocused = true;
                  },
                ),
              ),
              Icon(
                widget.iconData,
                color: isFocused ? pastelGreen : Colors.grey,
              ),
            ],
          ),
        ),
      ],
    );
  }
}