import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBooksList extends StatelessWidget {
  const CustomBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.67.r,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              'https://blog.hootsuite.com/wp-content/uploads/2020/02/Image-copyright-556x556.png.webp',
            ),
          ),
        ),
      ),
    );
  }
}
