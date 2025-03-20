import 'package:donut_app_2c_solis/models/product.dart';
import 'package:flutter/material.dart';
import 'package:donut_app_2c_solis/utils/products_tile.dart';

class BurgerTab extends StatelessWidget {
  final Function(Product) addToCart;
//listas de donas
  final List burgersOnSale = [
    [
      "Classic Burger",
      "Burger House",
      "45",
      Colors.orange,
      "lib/images/Burger.png"
    ],
    [
      "Bacon Cheeseburger",
      "Grill Masters",
      "55",
      Colors.red,
      "lib/images/BurgerBacon.png"
    ],
    [
      "Double Cheeseburger",
      "Cheesy Bites",
      "65",
      Colors.yellow,
      "lib/images/BurgerDoubleCheese.png"
    ],
    [
      "Egg Burger",
      "Morning Bites",
      "50",
      Colors.amber,
      "lib/images/BurgerEgg.png"
    ],
    [
      "Fries Burger",
      "Crispy Corner",
      "60",
      Colors.brown,
      "lib/images/BurgerFries.png"
    ],
    [
      "Simple Burger",
      "Minimalist Grill",
      "40",
      Colors.cyan,
      "lib/images/BurgerSimple.png"
    ],
    [
      "Spicy Burger",
      "Hot & Spicy",
      "58",
      Colors.deepOrange,
      "lib/images/Burger.png"
    ],
    [
      "Veggie Burger",
      "Green Bites",
      "48",
      Colors.green,
      "lib/images/BurgerSimple.png"
    ],
  ];

  BurgerTab({super.key, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    //widget para usar cuadricula
    return GridView.builder(
      //Cuantos elementos hay en una cuadricula
      itemCount: burgersOnSale.length,
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
            productFlavor: burgersOnSale[index][0],
            productStore: burgersOnSale[index][1],
            productPrice: burgersOnSale[index][2].toString(),
            productColor: burgersOnSale[index][3],
            imageName: burgersOnSale[index][4],
            onAddToCart: () {
              double price = double.parse(burgersOnSale[index][2]);
              addToCart(Product(
                name: burgersOnSale[index][0],
                price: price,
              ));
            });
      },
    );
  }
}
