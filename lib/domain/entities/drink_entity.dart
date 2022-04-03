import 'package:freezed_annotation/freezed_annotation.dart';

part 'drink_entity.freezed.dart';
part 'drink_entity.g.dart';

@freezed
class DrinkEntity with _$DrinkEntity {
  const factory DrinkEntity({
    @JsonKey(name:'idDrink') String? id,
    @JsonKey(name:'strDrink') String? name,
    @JsonKey(name:'strTags') String? tags,
    @JsonKey(name:'strCategory') String? category,
    @JsonKey(name:'strGlass') String? glassType,
    @JsonKey(name:'strAlcoholic') String? alcoholicType,
    @JsonKey(name:'strInstructions') String? instructions,
    @JsonKey(name:'strDrinkThumb') String? thumbnailUrl,
    @JsonKey(name:'strImageSource') String? imageUrl,
    @JsonKey(name:'strImageAttribution') String? imageAttribution,
    @JsonKey(name:'strIngredient1') String? ingredientOne,
    @JsonKey(name:'strIngredient2') String? ingredientTwo,
    @JsonKey(name:'strIngredient3') String? ingredientThree,
    @JsonKey(name:'strIngredient4') String? ingredientFour,
    @JsonKey(name:'strIngredient5') String? ingredientFive,
    @JsonKey(name:'strIngredient6') String? ingredientSix,
    @JsonKey(name:'strIngredient7') String? ingredientSeven,
    @JsonKey(name:'strIngredient8') String? ingredientEight,
    @JsonKey(name:'strIngredient9') String? ingredientNine,
    @JsonKey(name:'strIngredient10') String? ingredientTen,
    @JsonKey(name:'strIngredient11') String? ingredientEleven,
    @JsonKey(name:'strIngredient12') String? ingredientTwelve,
    @JsonKey(name:'strIngredient13') String? ingredientThirteen,
    @JsonKey(name:'strIngredient14') String? ingredientFourteen,
    @JsonKey(name:'strIngredient15') String? ingredientFifteen,
    @JsonKey(name:'strMeasure1') String? measurementOne,
    @JsonKey(name:'strMeasure2') String? measurementTwo,
    @JsonKey(name:'strMeasure3') String? measurementThree,
    @JsonKey(name:'strMeasure4') String? measurementFour,
    @JsonKey(name:'strMeasure5') String? measurementFive,
    @JsonKey(name:'strMeasure6') String? measurementSix,
    @JsonKey(name:'strMeasure7') String? measurementSeven,
    @JsonKey(name:'strMeasure8') String? measurementEight,
    @JsonKey(name:'strMeasure9') String? measurementNine,
    @JsonKey(name:'strMeasure10') String? measurementTen,
    @JsonKey(name:'strMeasure11') String? measurementEleven,
    @JsonKey(name:'strMeasure12') String? measurementTwelve,
    @JsonKey(name:'strMeasure13') String? measurementThirteen,
    @JsonKey(name:'strMeasure14') String? measurementFourteen,
    @JsonKey(name:'strMeasure15') String? measurementFifteen,
  }) = _DrinkEntity;

  factory DrinkEntity.fromJson(Map<String, dynamic> json) =>
      _$DrinkEntityFromJson(json);
}
