import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeatuerdListViewItem extends StatelessWidget {
  const FeatuerdListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: 130.w,
          height: 230.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: Colors.red,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.testImage),
            ),
          ),
        );
  }
}
