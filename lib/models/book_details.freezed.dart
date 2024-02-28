// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookDetails _$BookDetailsFromJson(Map<String, dynamic> json) {
  return _BookDetails.fromJson(json);
}

/// @nodoc
mixin _$BookDetails {
  String? get description => throw _privateConstructorUsedError;
  List<dynamic>? get authors => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookDetailsCopyWith<BookDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDetailsCopyWith<$Res> {
  factory $BookDetailsCopyWith(
          BookDetails value, $Res Function(BookDetails) then) =
      _$BookDetailsCopyWithImpl<$Res, BookDetails>;
  @useResult
  $Res call(
      {String? description, List<dynamic>? authors, String title, String key});
}

/// @nodoc
class _$BookDetailsCopyWithImpl<$Res, $Val extends BookDetails>
    implements $BookDetailsCopyWith<$Res> {
  _$BookDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? authors = freezed,
    Object? title = null,
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: freezed == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookDetailsImplCopyWith<$Res>
    implements $BookDetailsCopyWith<$Res> {
  factory _$$BookDetailsImplCopyWith(
          _$BookDetailsImpl value, $Res Function(_$BookDetailsImpl) then) =
      __$$BookDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description, List<dynamic>? authors, String title, String key});
}

/// @nodoc
class __$$BookDetailsImplCopyWithImpl<$Res>
    extends _$BookDetailsCopyWithImpl<$Res, _$BookDetailsImpl>
    implements _$$BookDetailsImplCopyWith<$Res> {
  __$$BookDetailsImplCopyWithImpl(
      _$BookDetailsImpl _value, $Res Function(_$BookDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? authors = freezed,
    Object? title = null,
    Object? key = null,
  }) {
    return _then(_$BookDetailsImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: freezed == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookDetailsImpl implements _BookDetails {
  const _$BookDetailsImpl(
      {this.description,
      final List<dynamic>? authors,
      required this.title,
      required this.key})
      : _authors = authors;

  factory _$BookDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookDetailsImplFromJson(json);

  @override
  final String? description;
  final List<dynamic>? _authors;
  @override
  List<dynamic>? get authors {
    final value = _authors;
    if (value == null) return null;
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String title;
  @override
  final String key;

  @override
  String toString() {
    return 'BookDetails(description: $description, authors: $authors, title: $title, key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookDetailsImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(_authors), title, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookDetailsImplCopyWith<_$BookDetailsImpl> get copyWith =>
      __$$BookDetailsImplCopyWithImpl<_$BookDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookDetailsImplToJson(
      this,
    );
  }
}

abstract class _BookDetails implements BookDetails {
  const factory _BookDetails(
      {final String? description,
      final List<dynamic>? authors,
      required final String title,
      required final String key}) = _$BookDetailsImpl;

  factory _BookDetails.fromJson(Map<String, dynamic> json) =
      _$BookDetailsImpl.fromJson;

  @override
  String? get description;
  @override
  List<dynamic>? get authors;
  @override
  String get title;
  @override
  String get key;
  @override
  @JsonKey(ignore: true)
  _$$BookDetailsImplCopyWith<_$BookDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
