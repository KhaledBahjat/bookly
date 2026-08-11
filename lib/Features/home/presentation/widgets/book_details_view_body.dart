import 'package:bookly/Features/home/presentation/widgets/book_box_action.dart';
import 'package:bookly/Features/home/presentation/widgets/books_details_section.dart';
import 'package:bookly/Features/home/presentation/widgets/coustom_book_details_abb_bar.dart';
import 'package:bookly/Features/home/presentation/widgets/similar_books_section.dart';
import 'package:bookly/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                const Height(height: 30),
                CoustomBookDetailsAppBar(),
                BookDetailsSection(),
                BoxAction(),
                const Expanded(
                  child: Height(height: 50),
                ),
                SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
