import 'package:bookly_app/Core/errors/failure.dart';
import 'package:bookly_app/Core/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {

  Future<Either<Failure, List<BookModel>>>fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>>fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>>fetchSimilarBooks({required String category});
}