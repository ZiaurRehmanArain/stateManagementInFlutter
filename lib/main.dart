import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/providers/favorate/favorate.dart';
import 'package:test/providers/favorate/favorate_povider.dart';
import 'package:test/providers/providerWidget.dart';
import 'package:test/providers/provider_class.dart';
import 'package:test/providers/slider%20provider/slider.dart';
import 'package:test/providers/slider%20provider/slider_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
    ChangeNotifierProvider(create:(_)=> providers(),)
    ,ChangeNotifierProvider(create:(_)=> slider_provider(),)
    ,ChangeNotifierProvider(create:(_)=> fovairate_provider(),)
      
    ],
    
     child:  MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
    home: favoirate())
    );
    
    
 
    
    
  }
}
