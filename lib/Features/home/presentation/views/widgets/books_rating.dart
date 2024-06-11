import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star_rounded,
          color: Color(0xffFDDA4A),
          size: 28,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: Style.textStyle16,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '(245)',
          style: Style.textStyle14.copyWith(
            color: Color(0xff6F6F6F),
          ),
        ),
      ],
    );
  }
}