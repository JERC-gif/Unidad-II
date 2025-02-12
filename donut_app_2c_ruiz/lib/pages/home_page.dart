import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.transparent,
        //Icono Izquierdo
        leading: Icon(
        Icons.menu,
        color: Colors.grey[800]
        ),
        //Icono Derecho
        actions:const [
          Padding(
            padding: EdgeInsets.only(right: 24.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      body: Column(
        children: [
      //Texto principal
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
          child: Row(
            children: [
              Text("I wan to  ", 
              style: TextStyle(
                //Tipografia 
                fontFamily: "ComicStrip" ,
                //Tamaño de letra
                fontSize: 34
              )
              ),
              Text("Eat", 
              style: TextStyle(
                //Tipografia 
                fontFamily: "ComicStrip" ,
                //Tamaño de letra
                fontSize: 32,
                //Negritas
                fontWeight: FontWeight.bold,
                //Subrayado
                decoration: TextDecoration.underline
              ),)
            ],
          ),
        ),


      //Pestaña (TaBar)

      //Contenido(Cart)

        ],)
    );
  }
}