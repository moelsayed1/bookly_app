import 'package:bookly_app/Core/utils/app_router.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/Features/search/data/repos/search_repo.dart';
import 'package:bookly_app/Features/search/presentation/manager/search_book_cubit/search_cubit.dart';
import 'package:bookly_app/Features/search/presentation/manager/search_book_cubit/search_state.dart';
import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              final selectedBook = state.books[index];
              return BlocProvider(
                create: (context) => SearchCubit(context.read<SearchRepo>()),
                child: GestureDetector(
                  onTap: () {
                    // Fetch similar books when a book is tapped
                    context.read<SearchCubit>().fetchSearchBooks(
                      query: selectedBook.volumeInfo.categories?.first ?? '',
                    );
                    GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: selectedBook);
                  },
                  child: SizedBox(
                    height: 140,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: CustomBookImage(
                              imageUrl: selectedBook.volumeInfo.imageLinks?.thumbnail ?? ''),
                        ),
                        const SizedBox(width: 30),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 12),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Text(
                                  selectedBook.volumeInfo.title ?? '',
                                  style: Style.textStyle20.copyWith(
                                    fontFamily: kGtSectraFine,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                selectedBook.volumeInfo.authors?.isNotEmpty ?? false
                                    ? selectedBook.volumeInfo.authors![0]
                                    : 'Unknown Author',
                                style: Style.textStyle14.copyWith(
                                  color: const Color(0xff6F6F6F),
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 3),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Free',
                                    style: Style.textStyle20.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  BookRating(
                                    rating: selectedBook.volumeInfo.averageRating ?? 0,
                                    count: selectedBook.volumeInfo.ratingsCount ?? 0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        } else {
          return const Center(child: CustomLoadingIndicator());
        }
      },
    );
  }
}