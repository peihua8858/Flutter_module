// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'BusinessItem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessItem _$BusinessItemFromJson(Map<String, dynamic> json) {
  return _BusinessItem.fromJson(json);
}

/// @nodoc
mixin _$BusinessItem {
  String? get ruleId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this BusinessItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessItemCopyWith<BusinessItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessItemCopyWith<$Res> {
  factory $BusinessItemCopyWith(
          BusinessItem value, $Res Function(BusinessItem) then) =
      _$BusinessItemCopyWithImpl<$Res, BusinessItem>;
  @useResult
  $Res call({String? ruleId, String title, String imageUrl});
}

/// @nodoc
class _$BusinessItemCopyWithImpl<$Res, $Val extends BusinessItem>
    implements $BusinessItemCopyWith<$Res> {
  _$BusinessItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ruleId = freezed,
    Object? title = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      ruleId: freezed == ruleId
          ? _value.ruleId
          : ruleId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessItemImplCopyWith<$Res>
    implements $BusinessItemCopyWith<$Res> {
  factory _$$BusinessItemImplCopyWith(
          _$BusinessItemImpl value, $Res Function(_$BusinessItemImpl) then) =
      __$$BusinessItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? ruleId, String title, String imageUrl});
}

/// @nodoc
class __$$BusinessItemImplCopyWithImpl<$Res>
    extends _$BusinessItemCopyWithImpl<$Res, _$BusinessItemImpl>
    implements _$$BusinessItemImplCopyWith<$Res> {
  __$$BusinessItemImplCopyWithImpl(
      _$BusinessItemImpl _value, $Res Function(_$BusinessItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ruleId = freezed,
    Object? title = null,
    Object? imageUrl = null,
  }) {
    return _then(_$BusinessItemImpl(
      ruleId: freezed == ruleId
          ? _value.ruleId
          : ruleId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessItemImpl with DiagnosticableTreeMixin implements _BusinessItem {
  const _$BusinessItemImpl(
      {this.ruleId, required this.title, required this.imageUrl});

  factory _$BusinessItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessItemImplFromJson(json);

  @override
  final String? ruleId;
  @override
  final String title;
  @override
  final String imageUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BusinessItem(ruleId: $ruleId, title: $title, imageUrl: $imageUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BusinessItem'))
      ..add(DiagnosticsProperty('ruleId', ruleId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('imageUrl', imageUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessItemImpl &&
            (identical(other.ruleId, ruleId) || other.ruleId == ruleId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ruleId, title, imageUrl);

  /// Create a copy of BusinessItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessItemImplCopyWith<_$BusinessItemImpl> get copyWith =>
      __$$BusinessItemImplCopyWithImpl<_$BusinessItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessItemImplToJson(
      this,
    );
  }
}

abstract class _BusinessItem implements BusinessItem {
  const factory _BusinessItem(
      {final String? ruleId,
      required final String title,
      required final String imageUrl}) = _$BusinessItemImpl;

  factory _BusinessItem.fromJson(Map<String, dynamic> json) =
      _$BusinessItemImpl.fromJson;

  @override
  String? get ruleId;
  @override
  String get title;
  @override
  String get imageUrl;

  /// Create a copy of BusinessItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessItemImplCopyWith<_$BusinessItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
