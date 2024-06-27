import 'package:bookly_app/Core/models/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                const SizedBox(
                  height: 20,
                ),
                BooksDetailsSection(
                  book: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                const SimilarBooksSection(),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}








