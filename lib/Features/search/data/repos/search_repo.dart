import 'package:bookly_app/Core/errors/failure.dart';
import 'package:bookly_app/Core/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {

  Future<Either<Failure, List<BookModel>>> searchForBooks({required String searchQuery});
}