import 'package:bookly_app/Core/errors/failure.dart';
import 'package:bookly_app/Core/models/book_model.dart';
import 'package:bookly_app/Core/utils/api_service.dart';
import 'package:bookly_app/Features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {

  final ApiService apiService;

  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> searchForBooks({required String searchQuery}) async{
    try {
      var data = await apiService.get(
          endPoint:
          'volumes?Filtering=free-ebooks&q= $searchQuery');

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}