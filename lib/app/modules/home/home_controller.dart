import 'package:mobx/mobx.dart';

import 'package:teste_flutter_slidy_modular_mobx/app/modules/home/models/poke_model.dart';
import 'package:teste_flutter_slidy_modular_mobx/app/modules/home/repository/poke_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PokeRepository repository;

  @observable
  ObservableFuture<List<PokemonModel>> pokemons;

  _HomeControllerBase(this.repository){
    fetchPokemons();
  }

  @action
  fetchPokemons() {
    pokemons = repository.getAllPokemons().asObservable();
  }
}
