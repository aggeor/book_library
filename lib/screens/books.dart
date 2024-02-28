import 'package:book_library/models/book.dart';
import 'package:book_library/models/category.dart';
import 'package:book_library/providers/books_provider.dart';
import 'package:book_library/screens/book_details.dart';
import 'package:book_library/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookScreen extends ConsumerWidget {
  const BookScreen({
    super.key,
    required this.title,
    required this.category,
  });

  final String title;
  final Category category;

  void selectBook(BuildContext context, Book book) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => BookDetailsScreen(book: book),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<Book>> booksAsync = ref.watch(booksProvider(category));
    void refreshBooks() {
      ref.invalidate(booksProvider(category));
      booksAsync = ref.refresh(booksProvider(category));
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child: AppBar(
          title: Text(title),
        ),
      ),
      body: booksAsync.when(
        data: (books) {
          return ListView.builder(
            itemCount: books.length,
            itemBuilder: (ctx, index) => BookItem(
              book: books[index],
              onSelectBook: (book) {
                ref.watch(booksCoverProvider(book.cover_id));
                ref.watch(booksDetailsDataProvider(book.key));
                selectBook(context, book);
              },
            ),
          );
        },
        error: (error, stackTrace) {
          return Column(
            children: [
              const Text('Something went wrong'),
              TextButton(
                onPressed: refreshBooks,
                child: const Text('Refresh'),
              )
            ],
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(color: Colors.amber),
          );
        },
      ),
    );
  }
}
