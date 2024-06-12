import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.18),
              child: CustomBookImage(),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              'The Jungle Book',
              style: Style.textStyle30,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Rudyard Kipling',
              style: Style.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            SizedBox(
              height: 30,
            ),
            BooksAction(),
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: Style.textStyle16.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SimilarBooksListView(),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}



