import 'package:books_app/core/errors/failures.dart';
import 'package:books_app/core/utils/api_service.dart';
import 'package:books_app/features/home/data/Models/BookModel/book_model.dart';
import 'package:books_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImol implements HomeRepo {
  final ApiService apiService;

  HomeRepoImol(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var endPoint =
          'volumes?Filtering=free-ebooks&q=subject:programming&sorting=newest';
      var data = await apiService.get(endPoint: endPoint);
      List<BookModel> books = [];
      for (var item in data['items']) {
        BookModel bookModel = BookModel.fromJson(item);
        books.add(bookModel);
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks()async {
    try {
      var endPoint =
          'volumes?Filtering=free-ebooks&q=subject:programming';
      var data = await apiService.get(endPoint: endPoint);
      List<BookModel> books = [];
      for (var item in data['items']) {
        BookModel bookModel = BookModel.fromJson(item);
        books.add(bookModel);
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
