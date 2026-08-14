import 'package:bookly/Features/home/presentation/manger/featured_book_cubit/featuerd_book_cubit.dart';
import 'package:bookly/Features/home/presentation/widgets/coustom_book_image.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatuerdBookCubit, FeatuerdBookState>(
      builder: (context, state) {
        if (state is FeatuerdBookSucces) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CoustomBookImage(
                imgPath: state.books[index].volumeInfo.imageLinks!.thumbnail,
              ),
              itemCount: state.books.length,
            ),
          );
        } else if (state is FeatuerdBookFalure) {
          return CustomErrorWidget(message: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
