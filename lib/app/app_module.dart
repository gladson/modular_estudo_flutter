import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'package:teste_flutter_modular_mobx/app/app_widget.dart';

import 'package:teste_flutter_modular_mobx/app/app_controller.dart';
import 'package:teste_flutter_modular_mobx/app/pages/home/home_controller.dart';

import 'package:teste_flutter_modular_mobx/app/pages/home/home_page.dart';
import 'package:teste_flutter_modular_mobx/app/pages/other/other_page.dart';
import 'package:teste_flutter_modular_mobx/app/pages/another/another_page.dart';

class AppModule extends MainModule{
  //Sistema de injeção de dependencias
  @override
  List<Bind> get binds => [
    Bind((i) => AppController()),
    Bind((i) => HomeController()),
  ];

  //Sistema de rotas
  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => HomePage()),
    Router('/other/:text', child: (_, args) => OtherPage(
      text: args.params['text'],
      )
    ),
    Router('/another', child: (_, args) => AnotherPage()),
  ];

  @override
  Widget get bootstrap => AppWidget();

}