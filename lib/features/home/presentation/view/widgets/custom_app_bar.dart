import 'package:book_app/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 50.h),
      child: Row(
        children: [
          Image.asset(
            AppConstant.logoPath,
            height: 18.h,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            iconSize: 26.r,
          )
        ],
      ),
    );
  }
}
