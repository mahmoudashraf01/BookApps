import 'package:books_app/core/Models/BookModel/book_model.dart';
import 'package:books_app/core/errors/failures.dart';
import 'package:books_app/core/utils/api_service.dart';
import 'package:books_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo{
  final ApiService apiService;

  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks({ String? bookName})async {
    
     try {
      var endPoint = 'volumes?Filtering=free-ebooks&q=$bookName';
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