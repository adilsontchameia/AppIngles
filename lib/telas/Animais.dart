import 'package:flutter/material.dart';

class Animais extends StatefulWidget {
  @override
  _AnimaisState createState() => _AnimaisState();
}

class _AnimaisState extends State<Animais> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/cao.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/gato.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/leao.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/macaco.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/ovelha.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/vaca.png"),
        ),
      ],
    );
  }
}
