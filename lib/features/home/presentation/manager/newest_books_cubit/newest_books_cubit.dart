import 'package:bloc/bloc.dart';
import 'package:books_app/features/home/data/Models/BookModel/book_model.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit() : super(NewestBooksInitial());
}
