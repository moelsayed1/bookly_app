import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count});

  final MainAxisAlignment mainAxisAlignment;

  final int rating;

  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          Icons.star_rounded,
          color: Color(0xffFDDA4A),
          size: 24,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          rating.toString(),
          style: Style.textStyle16,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '($count)',
          style: Style.textStyle14.copyWith(
            color: Colors.white.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}