import 'package:aprenda_ingles/telas/Animais.dart';
import 'package:aprenda_ingles/telas/Numeros.dart';
import 'package:aprenda_ingles/telas/Vogais.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  //Controlador
  TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aprenda Ingles"),
        bottom: TabBar(
          indicatorWeight: 4,
          labelColor: Colors.white,
          indicatorColor: Color(0xfff5e9b9),
          labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          controller: _controller,
          tabs: [
            Tab(
              text: "Animais",
            ),
            Tab(
              text: "Numeros",
            ),
            Tab(
              text: "Vogais",
            ),
          ],
        ),
      ),
      body: TabBar(
        controller: _controller,
        tabs: [
          Animais(),
          Numeros(),
          Vogais(),
        ],
      ),
    );
  }
}
