import 'package:bookly/Features/home/presentation/widgets/coustom_book_details_abb_bar.dart';
import 'package:bookly/Features/home/presentation/widgets/coustom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            CoustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .17),
              child: CoustomBookImage(),
            ),
          ],
        ),
      ),
    );
  }
}
