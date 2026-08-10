
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoustomBookDetailsAppBar extends StatelessWidget {
  const CoustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.close,
            size: 30.w,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart_outlined,
            size: 30.w,
          ),
        ),
      ],
    );
  }
}
