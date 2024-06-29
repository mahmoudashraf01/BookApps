part of 'search_for_book_cubit.dart';

sealed class SearchForBookState extends Equatable {
  const SearchForBookState();

  @override
  List<Object> get props => [];
}

final class SearchForBookInitial extends SearchForBookState {}

final class SearchForBookLoading extends SearchForBookState {}

final class SearchForBookFailure extends SearchForBookState {
  final String errMessage;

  const SearchForBookFailure(this.errMessage);
}

final class SearchForBookSuccess extends SearchForBookState {
  final List<BookModel> books;

  const SearchForBookSuccess(this.books);
}
