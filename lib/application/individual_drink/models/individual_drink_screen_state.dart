import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portable_bartender_v2/domain/models/drink_model.dart';

part 'individual_drink_screen_state.freezed.dart';

@freezed
class IndividualDrinkScreenState with _$IndividualDrinkScreenState {
  const factory IndividualDrinkScreenState({
    DrinkRecipeModel? drink,
  }) = _IndividualDrinkScreenState;
}
