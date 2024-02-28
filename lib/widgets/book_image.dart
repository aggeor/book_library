import 'package:book_library/providers/books_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookImage extends ConsumerWidget {
  const BookImage({
    super.key,
    required this.cover_id,
  });
  final int? cover_id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<FadeInImage> bookCoverAsync =
        ref.watch(booksCoverProvider(cover_id));
    void refreshCover() {
      ref.invalidate(booksCoverProvider(cover_id));
      bookCoverAsync = ref.refresh(booksCoverProvider(cover_id));
    }

    return bookCoverAsync.when(data: (image) {
      return image;
    }, error: (e, st) {
      return Column(
        children: [
          const Text('Something went wrong'),
          TextButton(
            onPressed: refreshCover,
            child: const Text('Refresh'),
          )
        ],
      );
    }, loading: () {
      return const Center(
        child: CircularProgressIndicator(color: Colors.amber),
      );
    });
  }
}
