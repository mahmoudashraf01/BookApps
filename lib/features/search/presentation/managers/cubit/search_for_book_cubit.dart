import 'package:bloc/bloc.dart';
import 'package:books_app/core/Models/BookModel/book_model.dart';
import 'package:books_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_for_book_state.dart';

class SearchForBookCubit extends Cubit<SearchForBookState> {
  SearchForBookCubit(this.searchRepo) : super(SearchForBookInitial());

  final SearchRepo searchRepo;
  Future<void> fetchSimillarBooks({required String bookName}) async {
    emit(SearchForBookLoading());
    //Either<Failure, List<BookModel>> result
    var result = await searchRepo.fetchSearchBooks(bookName: bookName);

    result.fold(
      (failure) => emit(
        SearchForBookFailure(failure.errorMessage),
      ),
      (books) => emit(SearchForBookSuccess(books)),
    );
  }
}
