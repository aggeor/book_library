import 'package:book_library/models/book.dart';
import 'package:book_library/widgets/book_image.dart';
import 'package:book_library/widgets/meal_item_trait.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    super.key,
    required this.book,
    required this.onSelectBook,
  });
  final Book book;
  final void Function(Book book) onSelectBook;

  String get titleText {
    return book.title.toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    final subjects = book.subject
        ?.map(
          (subject) => MealItemTrait(
            icon: Icons.schedule,
            label: subject,
          ),
        )
        .take(3)
        .toList();
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: () {
          onSelectBook(book);
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                book.title,
                maxLines: 2,
                textAlign: TextAlign.center,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 12,
              ),
              if (subjects != null)
                Wrap(
                  children: [
                    ...subjects,
                    const SizedBox(
                      width: 12,
                    ),
                  ],
                ),
              const SizedBox(
                height: 12,
              ),
              if (book.cover_id != null)
                BookImage(
                  cover_id: book.cover_id,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
