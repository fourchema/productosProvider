import 'package:flutter/material.dart';
import 'package:productos_proof_provider/src/widgets/imagen_producto.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: listaProductos(),
      
    );
  }
}