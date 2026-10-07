import 'package:bookly/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CoustomBookImage extends StatelessWidget {
  const CoustomBookImage({super.key, required this.imgPath});
  final String imgPath;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(
          imageUrl: imgPath,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) =>
              Icon(Icons.question_mark_rounded),
              placeholder: (context, url) => Center(
        child: LoadingAnimationWidget.fourRotatingDots(
          color: kPrimaryColor,
          size: 200,
        )),
        ),
      ),
    );
  }
}
