import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: CustomBookImage(
                imageUrl: 'https://www.google.com/imgres?q=cover%20books%20of%20flutter%20programming%20books&imgurl=https%3A%2F%2Fwww.flutterengineering.io%2Fbookcover_isbn.png&imgrefurl=https%3A%2F%2Fwww.flutterengineering.io%2F&docid=HOaU5zWMEBuslM&tbnid=mBXcapWi0iMC_M&vet=12ahUKEwjUjbCoqvCGAxVnVqQEHQQ_DswQM3oECHMQAA..i&w=1200&h=1090&hcb=2&ved=2ahUKEwjUjbCoqvCGAxVnVqQEHQQ_DswQM3oECHMQAA',
              ),
            );
          }),
    );
  }
}