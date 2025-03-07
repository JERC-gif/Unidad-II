import 'package:donut_app_2c_ruiz/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {

//Lista de donas 
  final List donutsOnSale = [
   // [ donutFlavor, donutPrice, donutColor, imageName ]
   ["Ice Cream", "Krispy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
   ["Strawberry", "Dunkin donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
   ["Grape Ape", "Aurrerá", "84", Colors.purple, "lib/images/grape_donut.png"],
   ["Choco", "Costco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
];

    DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    //Cuadricula
    return GridView.builder(
      //Numero de elementos en la cuadricula
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(8.0),
      //Organiza como distribuir
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //Numero de columnas
        crossAxisCount: 2,
        //Relacion de aspecto
        childAspectRatio: 1/1.4), 
        itemBuilder: (context, index){
          return DonutTile(
            donutFlavor: donutsOnSale[index][0],
            donutMark: donutsOnSale[index][1],
            donutPrice: donutsOnSale[index][2],
            donutColor: donutsOnSale[index][3],
            imageName: donutsOnSale[index][4]
          );
        });
  }
}