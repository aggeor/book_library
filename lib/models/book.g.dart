// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
      cover_id: json['cover_id'] as int?,
      subject: json['subject'] as List<dynamic>?,
      authors: json['authors'] as List<dynamic>?,
      title: json['title'] as String,
      key: json['key'] as String,
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'cover_id': instance.cover_id,
      'subject': instance.subject,
      'authors': instance.authors,
      'title': instance.title,
      'key': instance.key,
    };
