import 'package:books_app/core/errors/failures.dart';
import 'package:books_app/core/utils/api_service.dart';
import 'package:books_app/core/Models/BookModel/book_model.dart';
import 'package:books_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var endPoint = 'volumes?Filtering=free-ebooks&q=programming&Sorting=relevance';
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
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var endPoint = 'volumes?Filtering=free-ebooks&q=math';
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
  Future<Either<Failure, List<BookModel>>> fetchSimillarBooks(
      {required String category})async {
        try {
      var endPoint = 'volumes?Filtering=free-ebooks&q=Math&Sorting=relevance';
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
