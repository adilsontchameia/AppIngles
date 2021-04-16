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
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      //scrollDirection: Axis.horizontal,
      //scrollDirection: Axis.vertical,
      children: <Widget>[
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/imagens/cao.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/imagens/gato.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/imagens/leao.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/imagens/macaco.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/imagens/ovelha.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/imagens/vaca.png"),
        ),
      ],
    );
  }
}
