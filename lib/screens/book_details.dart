import 'package:book_library/models/book.dart';
import 'package:book_library/providers/books_provider.dart';
import 'package:book_library/widgets/book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookDetailsScreen extends ConsumerWidget {
  const BookDetailsScreen({
    super.key,
    required this.book,
  });
  final Book book;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookDetailsAsync = ref.watch(booksDetailsDataProvider(book.key));

    return bookDetailsAsync.when(error: (error, stackTrace) {
      return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Text('Error'));
    }, loading: () {
      return Scaffold(
          appBar: AppBar(
            title: Text(book.title),
          ),
          body: const Text('Error'));
    }, data: (bookDetails) {
      final authors = book.authors;
      if (bookDetails == null) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error. Something went wrong'),
          ),
        );
      }
      return Scaffold(
        appBar: AppBar(
          title: Text(
            book.title,
            maxLines: 2,
            textAlign: TextAlign.center,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              BookImage(
                cover_id: book.cover_id,
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                'Authors',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 14,
              ),
              if (authors != null)
                for (final author in authors)
                  Text(
                    author['name'],
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
              const SizedBox(
                height: 14,
              ),
              Text(
                'Description',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              if (bookDetails.description != null)
                Text(
                  bookDetails.description!,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
            ],
          ),
        ),
      );
    });
  }
}
