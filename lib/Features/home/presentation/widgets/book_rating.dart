import 'package:bookly/core/utils/spacing.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
        ),
        const Width(width: 3),
        Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        const Width(width: 3),

        Text(
          '(245)',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}