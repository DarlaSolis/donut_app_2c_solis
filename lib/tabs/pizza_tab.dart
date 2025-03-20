import 'package:donut_app_2c_solis/models/product.dart';
import 'package:flutter/material.dart';
import 'package:donut_app_2c_solis/utils/products_tile.dart';

class PizzaTab extends StatelessWidget {
  final Function(Product) addToCart;
  //lista de donas
  final List pizzasOnSale = [
    [
      "Chili Pizza",
      "Spicy Slice",
      "70",
      Colors.red,
      "lib/images/PizzaChili.png"
    ],
    [
      "Deluxe Pizza",
      "Gourmet Pizzas",
      "85",
      Colors.orange,
      "lib/images/PizzaDeluxe.png"
    ],
    [
      "Meat Lovers",
      "Carnivore Corner",
      "80",
      Colors.brown,
      "lib/images/PizzaMeat.png"
    ],
    [
      "Pepperoni Pizza",
      "Pepperoni Palace",
      "75",
      Colors.red,
      "lib/images/PizzaPepperoni.png"
    ],
    [
      "Pineapple Pizza",
      "Tropical Bites",
      "65",
      Colors.yellow,
      "lib/images/PizzaPineapple.png"
    ],
    [
      "Shrimp Pizza",
      "Seafood Delight",
      "90",
      Colors.teal,
      "lib/images/PizzaShrimp.png"
    ],
    [
      "Tomato Pizza",
      "Tomato Heaven",
      "60",
      Colors.red,
      "lib/images/PizzaTomato.png"
    ],
    [
      "Vegetarian Pizza",
      "Green Slice",
      "68",
      Colors.green,
      "lib/images/PizzaVegetarian.png"
    ],
  ];
  PizzaTab({super.key, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    //widget para usar cuadricula
    return GridView.builder(
        //Cuantos elementos hay en una cuadricula
        itemCount: pizzasOnSale.length,
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
              productFlavor: pizzasOnSale[index][0],
              productStore: pizzasOnSale[index][1],
              productPrice: pizzasOnSale[index][2].toString(),
              productColor: pizzasOnSale[index][3],
              imageName: pizzasOnSale[index][4],
              onAddToCart: () {
                double price = double.parse(pizzasOnSale[index][2]);
                addToCart(Product(
                  name: pizzasOnSale[index][0],
                  price: price,
                ));
              });
        });
  }
}
