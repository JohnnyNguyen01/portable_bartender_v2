import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portable_bartender_v2/domain/entities/drink_entity.dart';

part 'drink_model.freezed.dart';

@freezed
class DrinkModel with _$DrinkModel {
  const factory DrinkModel.infoModel({
    required String? id,
    required String? name,
  }) = DrinkInfoModel;

  static T? fromEntity<T extends DrinkModel>({required DrinkEntity? entity}){
    if(entity == null) return null;
    switch (T) {
      case DrinkInfoModel:
        return DrinkInfoModel(id: entity.id, name: entity.name) as T;
      default:
        return null;
    }
  }
}
