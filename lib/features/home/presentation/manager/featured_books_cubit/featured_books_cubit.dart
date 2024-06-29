import 'package:bloc/bloc.dart';
import 'package:books_app/core/Models/BookModel/book_model.dart';
import 'package:books_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    //Either<Failure, List<BookModel>> result
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold(
      (failure) => emit(
        FeaturedBooksFailure(failure.errorMessage),
      ),
      (books) => emit(FeaturedBooksSuccess(books)),
    );
  }
}
