import 'package:flutter/material.dart';

const List<DadosCard> categorias = [
  DadosCard("Grupo do Arroz", "assets/grupo_arroz.jpg"),
  DadosCard("Grupo do Feijão", "assets/grupo_feijao.jpg"),
  DadosCard("Grupo dos Vegetais C", "assets/grupo_vegetaisc.jpg"),
  DadosCard("Grupo dos Vegetais A", "assets/grupo_frutasa.jpg"),
  DadosCard("Grupo dos Vegetais A", "assets/grupo_frutasb.jpg"),
  DadosCard("Grupo dos Vegetais A", "assets/grupo_frutasc.jpg"),
  DadosCard("", "assets/grupo_paes_cereais.jpg"),
  DadosCard("", "assets/grupo_carnes.jpg"),
  DadosCard("", "assets/grupo_doces.jpg"),
];

Card preparaCardCategorias(int index) {

  return Card(
    child: Stack(
      children: [
        Image.asset(categorias[index].image),
        Text(categorias[index].name)
      ],
    ),
  );
}

class DadosCard {
  const DadosCard(this.name, this.image);

  final String name;
  final String image;
}
