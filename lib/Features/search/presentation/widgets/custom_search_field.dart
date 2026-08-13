import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlineBorder(),
        focusedBorder: buildOutlineBorder(),
        hintText: 'Search..',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: 22,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Colors.white,
        ),
      );
  }
}