

import 'package:flutter/material.dart';
import 'package:productos_proof_provider/src/provider/productos_provider.dart';


import 'package:productos_proof_provider/src/widgets/imagen_producto.dart';
import 'package:provider/provider.dart';



class ProductoPage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {


  final productosProvider = Provider.of<ProductosProvider>(context);

    return Scaffold(

      appBar: AppBar(
        title: Text('Producto'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_size_select_actual), 
            onPressed:(){             
              productosProvider.seleccionarFotoGaleria();
              },
          ),
          IconButton(
            icon: Icon(Icons.camera_alt), 
            onPressed:(){
             productosProvider.seleccionarFotoCamara();

            } 
          )
        ],
      ),

      
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Form(

            child: Column(
              children: <Widget>[

                mostrarFoto(),
                crearBoton(context)

              ],
            )
          ),
        ),
      ),
    );
  }




  
}