import 'package:aprenda_ingles/telas/Animais.dart';
import 'package:aprenda_ingles/telas/Numeros.dart';
import 'package:aprenda_ingles/telas/Vogais.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 3,
        vsync: this
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aprenda inglês"),
        bottom: TabBar(
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          //labelColor: Colors.green,
          //unselectedLabelColor: Colors.purple,
          controller: _tabController,
          tabs: <Widget>[
            Tab(text: "Bichos",),
            Tab(text: "Números",),
            Tab(text: "Vogais",),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Animais(),
          Numeros(),
          Vogais()
        ],
      ),
    );
  }
}
