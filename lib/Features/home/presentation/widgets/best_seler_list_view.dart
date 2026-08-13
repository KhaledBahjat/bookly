import 'package:bookly/Features/home/presentation/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSelerListView extends StatelessWidget {
  const BestSelerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BookListViewItem(),
        );
      },
    );
  }
}
