import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:teste_flutter_slidy_modular_mobx/app/modules/home/home_page.dart';
import 'package:teste_flutter_slidy_modular_mobx/app/modules/home/home_controller.dart';
import 'package:teste_flutter_slidy_modular_mobx/app/modules/home/repository/poke_repository.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => HomeController(i.get<PokeRepository>())),
    Bind((i) => PokeRepository(i.get<Dio>())),
  ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, child: (_, args) => HomePage()),
  ];

  static Inject get to => Inject<HomeModule>.of();
}
