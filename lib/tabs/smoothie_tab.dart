import 'package:donut_app_2c_solis/models/product.dart';
import 'package:flutter/material.dart';
import 'package:donut_app_2c_solis/utils/products_tile.dart';

class SmoothieTab extends StatelessWidget {
  final Function(Product) addToCart;
  //Lista de Donas
  final List smoothiesOnSale = [
    [
      "Banana Smoothie",
      "Fruity Blend",
      "25",
      Colors.yellow,
      "lib/images/SmoothieBanana.png"
    ],
    [
      "Avocado Smoothie",
      "Green Goodness",
      "30",
      Colors.green,
      "lib/images/SmoothieAvocado.png"
    ],
    [
      "Blueberry Smoothie",
      "Berry Boost",
      "28",
      Colors.blue,
      "lib/images/SmoothieBlueberry.png"
    ],
    [
      "Lemon Smoothie",
      "Citrus Splash",
      "22",
      Colors.yellow,
      "lib/images/SmoothieLemon.png"
    ],
    [
      "Orange Smoothie",
      "Orange Zest",
      "24",
      Colors.orange,
      "lib/images/SmoothieOrange.png"
    ],
    [
      "Strawberry Smoothie",
      "Berry Bliss",
      "26",
      Colors.pink,
      "lib/images/SmoothieStrawberry.png"
    ],
    [
      "Watermelon Smoothie",
      "Summer Refresh",
      "27",
      Colors.red,
      "lib/images/SmoothieWatermelon.png"
    ],
    [
      "Tropical Smoothie",
      "Tropical Mix",
      "29",
      Colors.yellow,
      "lib/images/SmoothieBanana.png"
    ],
  ];
  SmoothieTab({super.key, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    //widget para usar cuadricula
    return GridView.builder(
        //Cuantos elementos hay en una cuadricula
        itemCount: smoothiesOnSale.length,
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
              productFlavor: smoothiesOnSale[index][0],
              productStore: smoothiesOnSale[index][1],
              productPrice: smoothiesOnSale[index][2].toString(),
              productColor: smoothiesOnSale[index][3],
              imageName: smoothiesOnSale[index][4],
              onAddToCart: () {
                double price = double.parse(smoothiesOnSale[index][2]);
                addToCart(Product(
                  name: smoothiesOnSale[index][0],
                  price: price,
                ));
              });
        });
  }
}
