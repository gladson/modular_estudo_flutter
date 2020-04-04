import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: TextField(
          onChanged: (value){
            homeController.text = value;
          },
          decoration: InputDecoration(
            labelText: 'Um Texto Qualquer'
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        curve: Curves.easeIn,
        overlayColor: Colors.amber,
        backgroundColor: Colors.redAccent,
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            child: Icon(Icons.filter_1),
            backgroundColor: Colors.deepOrangeAccent,
            label: 'Primeira Página',
            onTap: (){
              print("vai - 1!");
              // Navigator.pushNamed(context, '/other/${homeController.text}');
              Modular.to.pushNamed('/other/${homeController.text}');
            }
          ),
          SpeedDialChild(
            child: Icon(Icons.filter_2),
            label: 'Segunda Página',
            onTap: (){
              print("vai - 2!");
              Modular.to.pushNamed('/another');
            }
          )
        ],
      )
    );
  }
}