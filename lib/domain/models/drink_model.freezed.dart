// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drink_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DrinkModelTearOff {
  const _$DrinkModelTearOff();

  DrinkInfoModel infoModel({required String? id, required String? name}) {
    return DrinkInfoModel(
      id: id,
      name: name,
    );
  }

  DrinkRecipeModel recipeModel(
      {required String? id,
      required String? name,
      required String? thumbnailUrl,
      required String? imageUrl,
      required String? instructions,
      required List<String>? tags,
      required List<String>? ingredients,
      required List<String>? measurements}) {
    return DrinkRecipeModel(
      id: id,
      name: name,
      thumbnailUrl: thumbnailUrl,
      imageUrl: imageUrl,
      instructions: instructions,
      tags: tags,
      ingredients: ingredients,
      measurements: measurements,
    );
  }
}

/// @nodoc
const $DrinkModel = _$DrinkModelTearOff();

/// @nodoc
mixin _$DrinkModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? id, String? name) infoModel,
    required TResult Function(
            String? id,
            String? name,
            String? thumbnailUrl,
            String? imageUrl,
            String? instructions,
            List<String>? tags,
            List<String>? ingredients,
            List<String>? measurements)
        recipeModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? id, String? name)? infoModel,
    TResult Function(
            String? id,
            String? name,
            String? thumbnailUrl,
            String? imageUrl,
            String? instructions,
            List<String>? tags,
            List<String>? ingredients,
            List<String>? measurements)?
        recipeModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? id, String? name)? infoModel,
    TResult Function(
            String? id,
            String? name,
            String? thumbnailUrl,
            String? imageUrl,
            String? instructions,
            List<String>? tags,
            List<String>? ingredients,
            List<String>? measurements)?
        recipeModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DrinkInfoModel value) infoModel,
    required TResult Function(DrinkRecipeModel value) recipeModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DrinkInfoModel value)? infoModel,
    TResult Function(DrinkRecipeModel value)? recipeModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DrinkInfoModel value)? infoModel,
    TResult Function(DrinkRecipeModel value)? recipeModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrinkModelCopyWith<DrinkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrinkModelCopyWith<$Res> {
  factory $DrinkModelCopyWith(
          DrinkModel value, $Res Function(DrinkModel) then) =
      _$DrinkModelCopyWithImpl<$Res>;
  $Res call({String? id, String? name});
}

/// @nodoc
class _$DrinkModelCopyWithImpl<$Res> implements $DrinkModelCopyWith<$Res> {
  _$DrinkModelCopyWithImpl(this._value, this._then);

  final DrinkModel _value;
  // ignore: unused_field
  final $Res Function(DrinkModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $DrinkInfoModelCopyWith<$Res>
    implements $DrinkModelCopyWith<$Res> {
  factory $DrinkInfoModelCopyWith(
          DrinkInfoModel value, $Res Function(DrinkInfoModel) then) =
      _$DrinkInfoModelCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
}

/// @nodoc
class _$DrinkInfoModelCopyWithImpl<$Res> extends _$DrinkModelCopyWithImpl<$Res>
    implements $DrinkInfoModelCopyWith<$Res> {
  _$DrinkInfoModelCopyWithImpl(
      DrinkInfoModel _value, $Res Function(DrinkInfoModel) _then)
      : super(_value, (v) => _then(v as DrinkInfoModel));

  @override
  DrinkInfoModel get _value => super._value as DrinkInfoModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(DrinkInfoModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DrinkInfoModel implements DrinkInfoModel {
  const _$DrinkInfoModel({required this.id, required this.name});

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'DrinkModel.infoModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DrinkInfoModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  $DrinkInfoModelCopyWith<DrinkInfoModel> get copyWith =>
      _$DrinkInfoModelCopyWithImpl<DrinkInfoModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? id, String? name) infoModel,
    required TResult Function(
            String? id,
            String? name,
            String? thumbnailUrl,
            String? imageUrl,
            String? instructions,
            List<String>? tags,
            List<String>? ingredients,
            List<String>? measurements)
        recipeModel,
  }) {
    return infoModel(id, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? id, String? name)? infoModel,
    TResult Function(
            String? id,
            String? name,
            String? thumbnailUrl,
            String? imageUrl,
            String? instructions,
            List<String>? tags,
            List<String>? ingredients,
            List<String>? measurements)?
        recipeModel,
  }) {
    return infoModel?.call(id, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? id, String? name)? infoModel,
    TResult Function(
            String? id,
            String? name,
            String? thumbnailUrl,
            String? imageUrl,
            String? instructions,
            List<String>? tags,
            List<String>? ingredients,
            List<String>? measurements)?
        recipeModel,
    required TResult orElse(),
  }) {
    if (infoModel != null) {
      return infoModel(id, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DrinkInfoModel value) infoModel,
    required TResult Function(DrinkRecipeModel value) recipeModel,
  }) {
    return infoModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DrinkInfoModel value)? infoModel,
    TResult Function(DrinkRecipeModel value)? recipeModel,
  }) {
    return infoModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DrinkInfoModel value)? infoModel,
    TResult Function(DrinkRecipeModel value)? recipeModel,
    required TResult orElse(),
  }) {
    if (infoModel != null) {
      return infoModel(this);
    }
    return orElse();
  }
}

abstract class DrinkInfoModel implements DrinkModel {
  const factory DrinkInfoModel({required String? id, required String? name}) =
      _$DrinkInfoModel;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  $DrinkInfoModelCopyWith<DrinkInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrinkRecipeModelCopyWith<$Res>
    implements $DrinkModelCopyWith<$Res> {
  factory $DrinkRecipeModelCopyWith(
          DrinkRecipeModel value, $Res Function(DrinkRecipeModel) then) =
      _$DrinkRecipeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      String? thumbnailUrl,
      String? imageUrl,
      String? instructions,
      List<String>? tags,
      List<String>? ingredients,
      List<String>? measurements});
}

/// @nodoc
class _$DrinkRecipeModelCopyWithImpl<$Res>
    extends _$DrinkModelCopyWithImpl<$Res>
    implements $DrinkRecipeModelCopyWith<$Res> {
  _$DrinkRecipeModelCopyWithImpl(
      DrinkRecipeModel _value, $Res Function(DrinkRecipeModel) _then)
      : super(_value, (v) => _then(v as DrinkRecipeModel));

  @override
  DrinkRecipeModel get _value => super._value as DrinkRecipeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? thumbnailUrl = freezed,
    Object? imageUrl = freezed,
    Object? instructions = freezed,
    Object? tags = freezed,
    Object? ingredients = freezed,
    Object? measurements = freezed,
  }) {
    return _then(DrinkRecipeModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      measurements: measurements == freezed
          ? _value.measurements
          : measurements // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$DrinkRecipeModel implements DrinkRecipeModel {
  const _$DrinkRecipeModel(
      {required this.id,
      required this.name,
      required this.thumbnailUrl,
      required this.imageUrl,
      required this.instructions,
      required this.tags,
      required this.ingredients,
      required this.measurements});

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? thumbnailUrl;
  @override
  final String? imageUrl;
  @override
  final String? instructions;
  @override
  final List<String>? tags;
  @override
  final List<String>? ingredients;
  @override
  final List<String>? measurements;

  @override
  String toString() {
    return 'DrinkModel.recipeModel(id: $id, name: $name, thumbnailUrl: $thumbnailUrl, imageUrl: $imageUrl, instructions: $instructions, tags: $tags, ingredients: $ingredients, measurements: $measurements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DrinkRecipeModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.thumbnailUrl, thumbnailUrl) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.instructions, instructions) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality()
                .equals(other.ingredients, ingredients) &&
            const DeepCollectionEquality()
                .equals(other.measurements, measurements));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(thumbnailUrl),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(instructions),
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(ingredients),
      const DeepCollectionEquality().hash(measurements));

  @JsonKey(ignore: true)
  @override
  $DrinkRecipeModelCopyWith<DrinkRecipeModel> get copyWith =>
      _$DrinkRecipeModelCopyWithImpl<DrinkRecipeModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? id, String? name) infoModel,
    required TResult Function(
            String? id,
            String? name,
            String? thumbnailUrl,
            String? imageUrl,
            String? instructions,
            List<String>? tags,
            List<String>? ingredients,
            List<String>? measurements)
        recipeModel,
  }) {
    return recipeModel(id, name, thumbnailUrl, imageUrl, instructions, tags,
        ingredients, measurements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? id, String? name)? infoModel,
    TResult Function(
            String? id,
            String? name,
            String? thumbnailUrl,
            String? imageUrl,
            String? instructions,
            List<String>? tags,
            List<String>? ingredients,
            List<String>? measurements)?
        recipeModel,
  }) {
    return recipeModel?.call(id, name, thumbnailUrl, imageUrl, instructions,
        tags, ingredients, measurements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? id, String? name)? infoModel,
    TResult Function(
            String? id,
            String? name,
            String? thumbnailUrl,
            String? imageUrl,
            String? instructions,
            List<String>? tags,
            List<String>? ingredients,
            List<String>? measurements)?
        recipeModel,
    required TResult orElse(),
  }) {
    if (recipeModel != null) {
      return recipeModel(id, name, thumbnailUrl, imageUrl, instructions, tags,
          ingredients, measurements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DrinkInfoModel value) infoModel,
    required TResult Function(DrinkRecipeModel value) recipeModel,
  }) {
    return recipeModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DrinkInfoModel value)? infoModel,
    TResult Function(DrinkRecipeModel value)? recipeModel,
  }) {
    return recipeModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DrinkInfoModel value)? infoModel,
    TResult Function(DrinkRecipeModel value)? recipeModel,
    required TResult orElse(),
  }) {
    if (recipeModel != null) {
      return recipeModel(this);
    }
    return orElse();
  }
}

abstract class DrinkRecipeModel implements DrinkModel {
  const factory DrinkRecipeModel(
      {required String? id,
      required String? name,
      required String? thumbnailUrl,
      required String? imageUrl,
      required String? instructions,
      required List<String>? tags,
      required List<String>? ingredients,
      required List<String>? measurements}) = _$DrinkRecipeModel;

  @override
  String? get id;
  @override
  String? get name;
  String? get thumbnailUrl;
  String? get imageUrl;
  String? get instructions;
  List<String>? get tags;
  List<String>? get ingredients;
  List<String>? get measurements;
  @override
  @JsonKey(ignore: true)
  $DrinkRecipeModelCopyWith<DrinkRecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
