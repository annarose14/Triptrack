


// ignore: depend_on_referenced_packages




import 'package:flutter/material.dart';

import 'login.dart';
import 'destination.dart';
import 'choose.dart';






void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:const LoginPage(),
      
     
    );
    
      


     
    
    
  }
 
}

class MapApp extends StatelessWidget {
   const MapApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
     home:MapApp(),
      
     
    );
    
      
      

     
    
    
  }
 
}



 class Destination extends StatelessWidget {
  const Destination({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country State and City Picker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:const MyHomePage(),
    );
  }
}
 class  Choose extends StatelessWidget {
    const Choose({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: MyCheckBoxList(),
    );
  }
}




