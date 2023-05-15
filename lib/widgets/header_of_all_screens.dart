import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_box_users/utils/app_colors.dart';

Container header(String text, Icon icons) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 5.0.h),
    width: 100.w,
    height: 40.h,
    child: Row(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 22.sp,
              color: Colours.themeColor,
              fontWeight: FontWeight.w800),
        ),
        SizedBox(width: 6.w),
        icons,
      ],
    ),
  );
}
