import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.18),
          child: CustomBookImage(
            imageUrl: 'https://www.google.com/imgres?q=cover%20books%20of%20flutter%20programming%20books&imgurl=https%3A%2F%2Fwww.flutterengineering.io%2Fbookcover_isbn.png&imgrefurl=https%3A%2F%2Fwww.flutterengineering.io%2F&docid=HOaU5zWMEBuslM&tbnid=mBXcapWi0iMC_M&vet=12ahUKEwjUjbCoqvCGAxVnVqQEHQQ_DswQM3oECHMQAA..i&w=1200&h=1090&hcb=2&ved=2ahUKEwjUjbCoqvCGAxVnVqQEHQQ_DswQM3oECHMQAA',
          ),
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
          rating: 5,
          count: 250,
        ),
        SizedBox(
          height: 30,
        ),
        BooksAction(),
      ],
    );
  }
}