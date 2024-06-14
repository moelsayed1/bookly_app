import 'package:bookly_app/Core/errors/failure.dart';
import 'package:bookly_app/Features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {

  Future<Either<Failure, List<BookModel>>>fetchBestSellerBooks();
  Future<Either<Failure, List<BookModel>>>fetchFeaturedBooks();
}