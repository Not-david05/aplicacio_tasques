import 'package:aplicacio_tasques/components/item_tasca.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  List tasquesLlista =[
    {"titol":"Tasca 1","valor":false},
    {"titol":"Tasca 2","valor":true},
    {"titol":"Tasca 3","valor":false},
  ];
  void canviaCheckbox( bool valorCheckbox, int posLlista){
      setState(() {
        tasquesLlista[posLlista]["valor"] =!tasquesLlista[posLlista]["valor"];
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      // AppBar.
         appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("App tasques"),
          foregroundColor: Colors.orange[200],
         ),
      // FloatingActionButton.
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal[300],
        shape: const CircleBorder(),
        onPressed: (){},
        child: Icon(Icons.add, color: Colors.orange[200],),
        ),
      // Body.
      body: ListView.builder(
        itemCount: tasquesLlista.length,
        itemBuilder: (context, index){
            return ItemTasca(
              textTasca: tasquesLlista[index]["titol"], 
              valorCheckbox: tasquesLlista[index]["valor"],
              canviaValorCheckbox: (valor)=> 
              canviaCheckbox(
              tasquesLlista[index]["valor"],
              index),
              esborrarTasca: ,);
        } 
        ),
    );
  }
}