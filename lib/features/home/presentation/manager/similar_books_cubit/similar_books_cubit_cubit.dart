import 'package:bloc/bloc.dart';
import 'package:books_app/features/home/data/Models/BookModel/book_model.dart';
import 'package:books_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_cubit_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksCubitState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksCubitInitial());

  final HomeRepo homeRepo;
  Future<void> fetchSimillarBooks({required String category}) async {
    emit(SimilarBooksCubitLoading());
    //Either<Failure, List<BookModel>> result
    var result = await homeRepo.fetchSimillarBooks(category: category);

    result.fold(
      (failure) => emit(
        SimilarBooksCubitFailure(failure.errorMessage),
      ),
      (books) => emit(SimilarBooksCubitSuccess(books)),
    );
  }
}
