import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portable_bartender_v2/domain/entities/drink_entity.dart';

part 'drink_model.freezed.dart';

@freezed
class DrinkModel with _$DrinkModel {
  const factory DrinkModel.infoModel({
    required String? id,
    required String? name,
  }) = DrinkInfoModel;

  const factory DrinkModel.recipeModel({
    required String? id,
    required String? name,
    required String? thumbnailUrl,
    required String? imageUrl,
    required String? instructions,
    required List<String>? tags,
    required List<String>? ingredients,
    required List<String>? measurements,
  }) = DrinkRecipeModel;

  static T? fromEntity<T extends DrinkModel>({required DrinkEntity? entity}) {
    if (entity == null) return null;
    switch (T) {
      case DrinkInfoModel:
        return DrinkInfoModel(id: entity.id, name: entity.name) as T;
      case DrinkRecipeModel:
        return DrinkModelMappers.drinkRecipeFromDrinkEntity(entity) as T;
      default:
        return null;
    }
  }
}

class DrinkModelMappers {
  static DrinkRecipeModel drinkRecipeFromDrinkEntity(DrinkEntity entity) {
    final drinkJson = entity.toJson();
    final ingredients = <String>[];
    final measurements = <String>[];
    for (int i = 1; i <= 15; i++) {
      final ingredient = drinkJson['strIngredient$i'] as String?;
      if (ingredient != null) ingredients.add(ingredient);
      final measurement = drinkJson['strMeasure$i'] as String?;
      if (measurement != null) measurements.add(measurement);
    }
    final tags = entity.tags?.split(',');
    return DrinkRecipeModel(
        id: entity.id,
        name: entity.name,
        thumbnailUrl: entity.thumbnailUrl,
        imageUrl: entity.imageUrl,
        instructions: entity.instructions,
        tags: tags,
        ingredients: ingredients,
        measurements: measurements);
  }
}
