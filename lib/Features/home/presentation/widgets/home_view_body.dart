import 'package:bookly/Features/home/presentation/widgets/coustom_app_bar.dart';
import 'package:bookly/Features/home/presentation/widgets/featuerd_book_list_view_item.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/spacing.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CoustomAppBar(),
          Height(height: 30),
          FeaturedBooksListView(),
          Height(height: 50),
          Text('Best Seler', style: Styles.textStyle20),
          BestSelerListViewItem(),
        ],
      ),
    );
  }
}

class BestSelerListViewItem extends StatelessWidget {
  const BestSelerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
        
          children: [
            AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage(AssetsData.testImage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Spacer(),
            Column(
              children: [
                Text('Title'),
                Text('Auther'),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Price'),
                    Text('⭐ 4.8')
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
