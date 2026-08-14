import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiService api;

  HomeRepoImplement(this.api);

  @override
  Future<Either<Failure, List<BookModel>>> fetchFetauredBooks() async {
    // TODO: implement fetchFetauredBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewstBooks() async {
    try {
      var data = await api.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming',
      );
      List<BookModel> books = (data['items'] as List)
          .map((book) => BookModel.fromJson(book))
          .toList();
      return right(books);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
