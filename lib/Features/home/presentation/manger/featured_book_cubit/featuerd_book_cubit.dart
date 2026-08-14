import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'featuerd_book_state.dart';

class FeatuerdBookCubit extends Cubit<FeatuerdBookState> {
  FeatuerdBookCubit() : super(FeatuerdBookInitial());
}
