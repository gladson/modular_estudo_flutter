import 'package:dio/dio.dart';

import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'package:teste_flutter_slidy_modular_mobx/app/app_controller.dart';
import 'package:teste_flutter_slidy_modular_mobx/app/app_widget.dart';
import 'package:teste_flutter_slidy_modular_mobx/app/modules/home/home_module.dart';
import 'package:teste_flutter_slidy_modular_mobx/app/shared/utils/constants.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
    Bind((i) => AppController()),
    Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
  ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, module: HomeModule()),
  ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
