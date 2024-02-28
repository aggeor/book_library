import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_details.freezed.dart';
part 'book_details.g.dart';

@freezed
class BookDetails with _$BookDetails {
  const factory BookDetails({
    String? description,
    List<dynamic>? authors,
    required String title,
    required String key,
  }) = _BookDetails;

  factory BookDetails.fromJson(Map<String, dynamic> json) =>
      _$BookDetailsFromJson(json);
}
