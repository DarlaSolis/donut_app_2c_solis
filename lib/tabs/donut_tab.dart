import 'package:donut_app_2c_solis/models/product.dart';
import 'package:donut_app_2c_solis/utils/products_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  final Function(Product) addToCart;
//listas de donas
//listas de donas
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    // Originales (4)
    [
      "Ice Cream",
      "Krispy Kreme",
      "36.0",
      Colors.blue,
      "lib/images/icecream_donut.png"
    ],
    ["Strawberry", "Donky Donuts", "45", Colors.red, "lib/images/Donut2.png"],
    ["Grape Ape", "Aurrerá", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Costco", "95", Colors.brown, "lib/images/chocolate_donut.png"],

    // Nuevos (4)
    [
      "Caramel Swirl",
      "Dunkin' Donuts",
      "28",
      Colors.orange,
      "lib/images/Donut6.png"
    ],
    [
      "Blueberry Blast",
      "Mister Donut",
      "52",
      Colors.green,
      "lib/images/donut7.png"
    ],
    [
      "Vanilla Dream",
      "Tim Hortons",
      "67",
      Colors.pink,
      "lib/images/donut3.png"
    ],
    [
      "Cookie Crunch",
      "La Donutería",
      "79",
      Colors.teal,
      "lib/images/donut4.png"
    ],
  ];

  DonutTab({super.key, required this.addToCart});

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
        return ProductTile(
            productFlavor: donutsOnSale[index][0],
            productStore: donutsOnSale[index][1],
            productPrice: donutsOnSale[index][2].toString(),
            productColor: donutsOnSale[index][3],
            imageName: donutsOnSale[index][4],
            onAddToCart: () {
              double price = double.parse(donutsOnSale[index][2]);
              addToCart(Product(
                name: donutsOnSale[index][0],
                price: price,
              ));
            });
      },
    );
  }
}
