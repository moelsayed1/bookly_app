import 'package:bookly_app/Features/search/data/repos/search_repo.dart';
import 'package:bookly_app/Features/search/presentation/manager/search_book_cubit/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._searchRepo) : super(SearchInitial());

  final SearchRepo _searchRepo;

  void fetchSearchBooks({required String query}) async {
    emit(SearchLoading());
    final result = await _searchRepo.searchForBooks(searchQuery: query);
    result.fold(
          (failure) => emit(SearchFailure(failure.errMessage)),
          (books) => emit(SearchSuccess(books)),
    );
  }
}
