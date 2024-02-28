// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookDetailsImpl _$$BookDetailsImplFromJson(Map<String, dynamic> json) =>
    _$BookDetailsImpl(
      description: json['description'] as String?,
      authors: json['authors'] as List<dynamic>?,
      title: json['title'] as String,
      key: json['key'] as String,
    );

Map<String, dynamic> _$$BookDetailsImplToJson(_$BookDetailsImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'authors': instance.authors,
      'title': instance.title,
      'key': instance.key,
    };
