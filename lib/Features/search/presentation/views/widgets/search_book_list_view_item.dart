import 'package:bookly_app/Core/models/book_model.dart';
import 'package:bookly_app/Core/widgets/custom_loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({
    super.key,
    required this.book,
  });

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CachedNetworkImage(
        imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
        // Handle null imageLinks
        placeholder: (context, url) => const CustomLoadingIndicator(),
        // Add placeholder
        errorWidget: (context, url, error) =>
            const Icon(Icons.error), // Add errorWidget
      ),
      title: Text(
        book.volumeInfo.title ?? '',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ), // Handle null title
      subtitle: Text(book.volumeInfo.authors?.isNotEmpty ?? false
          ? book.volumeInfo.authors![0]
          : 'Unknown Author',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ), // Handle null or empty authors
    );
  }
}
