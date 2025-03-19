import 'package:flutter/material.dart';
import 'package:donut_app_2c_solis/utils/donut_tile.dart';

class SmoothieTab extends StatelessWidget {
  final List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]

    [
      "Ice Cream",
      "Krispy Kreme",
      "36",
      Colors.blue,
      "lib/images/icecream_donut.png"
    ],

    [
      "Strawberry",
      "Donkey Donuts",
      "45",
      Colors.red,
      "lib/images/strawberry_donut.png"
    ],

    ["Grape Ape", "Aurrerá", "84", Colors.purple, "lib/images/grape_donut.png"],

    ["Choco", "Costco", "95", Colors.brown, "lib/images/chocolate_donut.png"],

    [
      "Ice Cream",
      "Krispy Kreme",
      "36",
      Colors.blue,
      "lib/images/icecream_donut.png"
    ],

    [
      "Strawberry",
      "Donkey Donuts",
      "45",
      Colors.red,
      "lib/images/strawberry_donut.png"
    ],

    ["Grape Ape", "Aurrerá", "84", Colors.purple, "lib/images/grape_donut.png"],

    ["Choco", "Costco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
  ];
  SmoothieTab({super.key});

  @override
  Widget build(BuildContext context) {
    //widget para usar cuadricula
    return GridView.builder(
      //Cuantos elementos hay en una cuadricula
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(12),
      //Organizan como se veran/distribuiran los elmentos
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Cuántas colu mnas usare
        crossAxisCount: 2,
        //Relación de aspecto (proporción)
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        //cada elemento individual
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutStore: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
        );
      },
    );
  }
}
