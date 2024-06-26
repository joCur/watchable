// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductionCompany _$ProductionCompanyFromJson(Map<String, dynamic> json) {
  return _ProductionCompany.fromJson(json);
}

/// @nodoc
mixin _$ProductionCompany {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "logo_path")
  String? get logoPath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "origin_country")
  String get originCountry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionCompanyCopyWith<ProductionCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCompanyCopyWith<$Res> {
  factory $ProductionCompanyCopyWith(
          ProductionCompany value, $Res Function(ProductionCompany) then) =
      _$ProductionCompanyCopyWithImpl<$Res, ProductionCompany>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "logo_path") String? logoPath,
      String name,
      @JsonKey(name: "origin_country") String originCountry});
}

/// @nodoc
class _$ProductionCompanyCopyWithImpl<$Res, $Val extends ProductionCompany>
    implements $ProductionCompanyCopyWith<$Res> {
  _$ProductionCompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? logoPath = freezed,
    Object? name = null,
    Object? originCountry = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originCountry: null == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionCompanyImplCopyWith<$Res>
    implements $ProductionCompanyCopyWith<$Res> {
  factory _$$ProductionCompanyImplCopyWith(_$ProductionCompanyImpl value,
          $Res Function(_$ProductionCompanyImpl) then) =
      __$$ProductionCompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "logo_path") String? logoPath,
      String name,
      @JsonKey(name: "origin_country") String originCountry});
}

/// @nodoc
class __$$ProductionCompanyImplCopyWithImpl<$Res>
    extends _$ProductionCompanyCopyWithImpl<$Res, _$ProductionCompanyImpl>
    implements _$$ProductionCompanyImplCopyWith<$Res> {
  __$$ProductionCompanyImplCopyWithImpl(_$ProductionCompanyImpl _value,
      $Res Function(_$ProductionCompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? logoPath = freezed,
    Object? name = null,
    Object? originCountry = null,
  }) {
    return _then(_$ProductionCompanyImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductionCompanyImpl
    with DiagnosticableTreeMixin
    implements _ProductionCompany {
  const _$ProductionCompanyImpl(
      this.id,
      @JsonKey(name: "logo_path") this.logoPath,
      this.name,
      @JsonKey(name: "origin_country") this.originCountry);

  factory _$ProductionCompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionCompanyImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "logo_path")
  final String? logoPath;
  @override
  final String name;
  @override
  @JsonKey(name: "origin_country")
  final String originCountry;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductionCompany(id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductionCompany'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('logoPath', logoPath))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('originCountry', originCountry));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionCompanyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originCountry, originCountry) ||
                other.originCountry == originCountry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, logoPath, name, originCountry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionCompanyImplCopyWith<_$ProductionCompanyImpl> get copyWith =>
      __$$ProductionCompanyImplCopyWithImpl<_$ProductionCompanyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionCompanyImplToJson(
      this,
    );
  }
}

abstract class _ProductionCompany implements ProductionCompany {
  const factory _ProductionCompany(
          final int id,
          @JsonKey(name: "logo_path") final String? logoPath,
          final String name,
          @JsonKey(name: "origin_country") final String originCountry) =
      _$ProductionCompanyImpl;

  factory _ProductionCompany.fromJson(Map<String, dynamic> json) =
      _$ProductionCompanyImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "logo_path")
  String? get logoPath;
  @override
  String get name;
  @override
  @JsonKey(name: "origin_country")
  String get originCountry;
  @override
  @JsonKey(ignore: true)
  _$$ProductionCompanyImplCopyWith<_$ProductionCompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
