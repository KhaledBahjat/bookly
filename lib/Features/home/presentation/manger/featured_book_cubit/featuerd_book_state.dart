part of 'featuerd_book_cubit.dart';

sealed class FeatuerdBookState extends Equatable {
  const FeatuerdBookState();
  @override
  List<Object> get props => [];
}

final class FeatuerdBookInitial extends FeatuerdBookState {}

final class FeatuerdBookLoading extends FeatuerdBookState {}

final class FeatuerdBookFalure extends FeatuerdBookState {
  final String errorMessage;

  const FeatuerdBookFalure(this.errorMessage);
}

final class FeatuerdBookSucces extends FeatuerdBookState {
  final List<BookModel>books;

  const FeatuerdBookSucces(this.books);
}
