import 'package:bookly_app/Features/home/data/models/book_model.dart';

class NewestBooksState {}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksSuccess extends NewestBooksState {

  final List<BookModel> books;

  NewestBooksSuccess(this.books);
}

class NewestBooksFailure extends NewestBooksState {

  final String errMessage;

  NewestBooksFailure(this.errMessage);
}