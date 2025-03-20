import 'package:donut_app_2c_solis/models/product.dart';
import 'package:flutter/material.dart';
import 'package:donut_app_2c_solis/utils/products_tile.dart';

class PancakesTab extends StatelessWidget {
  final Function(Product) addToCart;
  //lista de donas
  final List pancakesOnSale = [
    [
      "Banana Pancakes",
      "Sweet Morning",
      "35",
      Colors.yellow,
      "lib/images/PancakeBanana.png"
    ],
    [
      "Blackberry Pancakes",
      "Berry Delight",
      "40",
      Colors.purple,
      "lib/images/PancakeBlackberry.png"
    ],
    [
      "Blueberry Pancakes",
      "Blueberry Bliss",
      "42",
      Colors.blue,
      "lib/images/PancakeBluekberry.png"
    ],
    [
      "Cherry Pancakes",
      "Cherry Top",
      "38",
      Colors.red,
      "lib/images/PancakeCherry.png"
    ],
    [
      "Double Pancakes",
      "Double Trouble",
      "50",
      Colors.orange,
      "lib/images/PancakeDouble.png"
    ],
    [
      "Extra Fluffy Pancakes",
      "Fluffy Heaven",
      "45",
      Colors.pink,
      "lib/images/PancakeExtra.png"
    ],
    [
      "Jelly Pancakes",
      "Jelly Joy",
      "37",
      Colors.pink,
      "lib/images/PancakeJelly.png"
    ],
    [
      "Simple Pancakes",
      "Classic Bites",
      "30",
      Colors.brown,
      "lib/images/PancakeSimple.png"
    ],
  ];
  PancakesTab({super.key, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    //widget para usar cuadricula
    return GridView.builder(
        //Cuantos elementos hay en una cuadricula
        itemCount: pancakesOnSale.length,
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
              productFlavor: pancakesOnSale[index][0],
              productStore: pancakesOnSale[index][1],
              productPrice: pancakesOnSale[index][2].toString(),
              productColor: pancakesOnSale[index][3],
              imageName: pancakesOnSale[index][4],
              onAddToCart: () {
                double price = double.parse(pancakesOnSale[index][2]);
                addToCart(Product(
                  name: pancakesOnSale[index][0],
                  price: price,
                ));
              });
        });
  }
}
