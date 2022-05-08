import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portable_bartender_v2/application/individual_drink/models/individual_drink_screen_state.dart';
import 'package:portable_bartender_v2/domain/interactors/drink_interactor/drink_interactor.dart';
import 'package:portable_bartender_v2/domain/models/drink_model.dart';

final individualDrinkScreenViewModelProvider =
    StateNotifierProvider.autoDispose<IndividualDrinkScreenViewModel,
        IndividualDrinkScreenState>((ref) {
  final drinkInteractor = ref.watch(drinkInteractorProvider);
  return IndividualDrinkScreenViewModel(drinkInteractor: drinkInteractor);
});

class IndividualDrinkScreenViewModel
    extends StateNotifier<IndividualDrinkScreenState> {
  IndividualDrinkScreenViewModel({required DrinkInteractor drinkInteractor})
      : _drinkInteractor = drinkInteractor,
        super(const IndividualDrinkScreenState());

  final DrinkInteractor _drinkInteractor;

  Future<void> initialize() async {
    final randomDrink =
        await _drinkInteractor.fetchRandomDrink<DrinkRecipeModel>();
    if (randomDrink == null) return;
    state = state.copyWith(drink: randomDrink);
  }
}
