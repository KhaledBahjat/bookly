import 'package:bookly/Features/home/presentation/widgets/best_seler_list_view.dart';
import 'package:bookly/Features/home/presentation/widgets/coustom_app_bar.dart';
import 'package:bookly/Features/home/presentation/widgets/featuerd_book_list_view_item.dart';
import 'package:bookly/core/utils/spacing.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CoustomAppBar(),
              ),
              Height(height: 30),
              FeaturedBooksListView(),
              Height(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text('Best Seler', style: Styles.textStyle18),
              ),
              const Height(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: BestSelerListView(),
          ),
        ),
      ],
    );
  }
}
