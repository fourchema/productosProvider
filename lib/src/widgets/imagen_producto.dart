
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:productos_proof_provider/src/provider/productos_provider.dart';


Widget mostrarFoto(){

  if (foto != null) {

    return Image.file(foto);
    
  } else {

    return Image(image:AssetImage('assets/photografy_grey.png') ,);

  }

}

Widget crearBoton(context) {

  final productoProvider = ProductosProvider();

    return RaisedButton.icon(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      color: Colors.deepPurple,
      textColor: Colors.white,
      label: Text('Guardar'),
      icon: Icon(Icons.save),
      onPressed: (){
        
        productoProvider.subirImagen(foto, foto.path);
        Navigator.pushReplacementNamed(context, 'home');
         
      }
    );
  }

  Widget listaProductos(){

    return Column(
      children: <Widget>[
        Image.file(foto)
      ],
    );
  }


 


      