import 'package:bookly/Features/home/presentation/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/widgets/coustom_book_image.dart';
import 'package:bookly/core/utils/spacing.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .2,
          ),
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
      ],
    );
  }
}