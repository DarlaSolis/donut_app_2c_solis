import 'package:donut_app_2c_solis/tabs/burger_tab.dart';
import 'package:donut_app_2c_solis/tabs/donut_tab.dart';
import 'package:donut_app_2c_solis/tabs/pancakes_tab.dart';
import 'package:donut_app_2c_solis/tabs/pizza_tab.dart';
import 'package:donut_app_2c_solis/tabs/smoothie_tab.dart';
import 'package:donut_app_2c_solis/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    const MyTab(iconPath: 'lib/icons/donut.png'),
    const MyTab(iconPath: 'lib/icons/burger.png'),
    const MyTab(iconPath: 'lib/icons/smoothie.png'),
    const MyTab(iconPath: 'lib/icons/pancakes.png'),
    const MyTab(iconPath: 'lib/icons/pizza.png')
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: Icon(Icons.menu, color: Colors.grey[800]),
            //Ícono derecho
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Icon(Icons.person),
              )
            ],
          ),
          body: Column(
            children: [
              //Texto principal
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 36, vertical: 18),
                child: Row(
                  children: [
                    Text("I want to ", style: TextStyle(fontSize: 32)),
                    Text("Eat",
                        style: TextStyle(
                            //Tamaño de letra
                            fontSize: 32,
                            //Negritas
                            fontWeight: FontWeight.bold,
                            //Subrayado
                            decoration: TextDecoration.underline))
                  ],
                ),
              ),

              //Pestañas (TapBar)
              TabBar(tabs: myTabs),
              //Contenido de pestañas (TabBarView)
              Expanded(
                child: TabBarView(
                  children: [
                    DonutTab(),
                    BurgerTab(),
                    SmoothieTab(),
                    PancakesTab(),
                    PizzaTab()
                  ],
                ),
              ),
              //Carrito (Cart)
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(16),
                child: Row(
                  //Alinear los elementos a los extremos
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        //Alinear horizontalmente una columna
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                              "2 Items | \$45"),
                          Text('Delivery Charges Incluted'),
                        ],
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            padding: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12)),
                        child: Row(
                          children: [
                            Icon(Icons.shopping_cart, color: Colors.white),
                            SizedBox(width: 10),
                            Text(
                              'View  Cart',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ))
                  ],
                ),
              )
            ],
          )),
    );
  }
}
