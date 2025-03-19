import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutStore;
  final String donutPrice;
  //Dynamic porque será de tipo COLOR
  final dynamic donutColor;
  final dynamic imageName;

  const DonutTile(
      {super.key,
      required this.donutFlavor,
      required this.donutStore,
      required this.donutPrice,
      this.donutColor,
      this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: donutColor[50], borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
            //PriceTag

            Row(
              //Alinea a la derecha
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: donutColor[800]),
                  ),
                )
              ],
            ),
            //Donut Picture
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Image.asset(imageName),
            ),

            //Donut Flavor Text
            Text(
              donutFlavor,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            //Espacio entre texto
            SizedBox(
              height: 4,
            ),
            //TODO: AGREGAR TEXTO DE LA TIENDA DE DONAS
            Text(
              donutStore,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
            ),

            //Iconos
            Padding(
              padding: const EdgeInsets.all(11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_border),
                  Icon(Icons.add),
                ],
              ),
            ),
            //Buttons
          ],
        ),
      ),
    );
  }
}
