import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featuerd_book_state.dart';

class FeatuerdBookCubit extends Cubit<FeatuerdBookState> {
  FeatuerdBookCubit(this.homeRepo) : super(FeatuerdBookInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeatuerdBookLoading());
    var result = await homeRepo.fetchFetauredBooks();
    result.fold(
      (failure) {
        emit(FeatuerdBookFalure(failure.errMessage));
      },
      (books) {
        emit(FeatuerdBookSucces(books));
      },
    );
  }
}
