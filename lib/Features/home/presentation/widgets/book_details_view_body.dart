import 'package:bookly/Features/home/presentation/widgets/coustom_book_details_abb_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            CoustomBookDetailsAppBar(),
          ],
        ),
      ),
    );
  }
}
