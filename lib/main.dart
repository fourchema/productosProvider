import 'package:flutter/material.dart';
import 'package:productos_proof_provider/src/pages/home_page.dart';
import 'package:productos_proof_provider/src/pages/producto_page.dart';
import 'package:productos_proof_provider/src/provider/productos_provider.dart';
import 'package:provider/provider.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductosProvider(),),

      ],




      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'producto',
        routes: {
          'producto' : (context) => ProductoPage(),
          'home' : (context) => HomePage()
        },
      ),
    );
  }
}