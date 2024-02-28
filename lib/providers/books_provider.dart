import 'package:book_library/models/book.dart';
import 'package:book_library/models/book_details.dart';
import 'package:book_library/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

import 'package:transparent_image/transparent_image.dart';

final dio = Dio();

final booksProvider = FutureProvider.family.autoDispose<List<Book>, Category>(
  (ref, Category category) async {
    try {
      final response = await dio.get(
          'https://openlibrary.org/subjects/${category.title.toLowerCase()}.json?details=false');
      if (response.data != null) {
        Map result = response.data;

        List<Book> books = [];
        for (int i = 0; i < result['works'].length; i++) {
          Book book = Book.fromJson(result['works'][i]);
          books.add(book);
        }
        // return [];
        return books;
      }
    } catch (e) {}
    return [];
  },
);

final booksDetailsDataProvider =
    FutureProvider.family.autoDispose<BookDetails?, String>(
  (ref, String key) async {
    try {
      final response = await dio.get('https://openlibrary.org$key.json');
      if (response.data != null) {
        Map result = response.data;

        BookDetails bookDetails =
            BookDetails.fromJson(result as Map<String, dynamic>);
        return bookDetails;
      }
    } catch (e) {}
    return null;
  },
);

final booksCoverProvider = FutureProvider.family.autoDispose<FadeInImage, int?>(
  (ref, int? key) async {
    final response = FadeInImage.memoryNetwork(
      placeholder: kTransparentImage,
      image: 'https://covers.openlibrary.org/b/id/$key-L.jpg',
    );
    return response;
  },
);
