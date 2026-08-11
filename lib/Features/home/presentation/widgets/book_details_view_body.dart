import 'package:bookly/Features/home/presentation/widgets/book_box_action.dart';
import 'package:bookly/Features/home/presentation/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/widgets/coustom_book_details_abb_bar.dart';
import 'package:bookly/Features/home/presentation/widgets/coustom_book_image.dart';
import 'package:bookly/Features/home/presentation/widgets/similar_books_list_view.dart';
import 'package:bookly/core/utils/spacing.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .2),
                  child: CoustomBookImage(),
                ),
                const Height(height: 43),
                Text(
                  'The Jungle Book',
                  style: Styles.textStyle30,
                ),
                const Height(height: 6),
                Opacity(
                  opacity: .7,
                  child: Text(
                    'Rudyard Kipling',
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Height(height: 18),

                BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const Height(height: 37),
                BoxAction(),
                const Expanded(
                  child: Height(height: 50),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Height(height: 16),
                SimilarBookListView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
