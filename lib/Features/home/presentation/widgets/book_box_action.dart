
import 'package:bookly/core/widgets/coustom_button.dart';
import 'package:flutter/material.dart';

class BoxAction extends StatelessWidget {
  const BoxAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CoustomButton(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              topLeft: Radius.circular(12),
            ),
            backgroundColor: Colors.white,
            text: '19\$',
            textColor: Colors.black,
          ),
        ),
        Expanded(
          child: CoustomButton(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            backgroundColor: Color(0xffEF8262),
            text: 'Free Preview',
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
