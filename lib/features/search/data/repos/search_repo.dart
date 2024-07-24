import 'package:books_app/core/Models/BookModel/book_model.dart';
import 'package:books_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {

  Future<Either<Failure, List<BookModel>>> fetchSearchBooks({
     String? bookName,
  });
}