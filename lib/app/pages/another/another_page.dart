import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'package:teste_flutter_modular_mobx/app/pages/home/home_controller.dart';

class AnotherPage extends StatefulWidget {
  @override
  _AnotherPageState createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  @override
  Widget build(BuildContext context) {

    final homeController = Modular.get<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Another'),
      ),
      body: Center(
        child: Text(homeController.text),
      ),
    );
  }
}