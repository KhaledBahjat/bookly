import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CoustomButton extends StatelessWidget {
  const CoustomButton({
    super.key,
    required this.textColor,
    required this.backgroundColor,
    required this.text,
    this.borderRadius,
    this.fontSize,
  });
  final Color textColor;
  final Color backgroundColor;
  final String text;
  final BorderRadiusGeometry? borderRadius;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
