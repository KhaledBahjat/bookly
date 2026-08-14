import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoustomBookImage extends StatelessWidget {
  const CoustomBookImage({super.key, required this.imgPath});
  final String imgPath;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        margin: EdgeInsets.only(left: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imgPath),
          ),
        ),
      ),
    );
  }
}
