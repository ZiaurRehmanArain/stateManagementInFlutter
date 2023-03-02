import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/providers/provider_class.dart';

class poviderChange extends StatefulWidget {
  // const poviderChange({super.key});

  @override
  State<poviderChange> createState() => _poviderChangeState();


}

class _poviderChangeState extends State<poviderChange> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
final countprovider=Provider.of<providers>(context,listen: false);

    // Timer.periodic(Duration(seconds: 1
    // ), (timer) {
    //   countprovider.setCount();
    //  });
  }
  @override
  
// int count=0;

  @override
  Widget build(BuildContext context) {
final countprovider=Provider.of<providers>(context,listen: false);
        print("only all");

    return Scaffold(
      appBar: AppBar(title: Text('Providers'),),
      body: Center(child: 
      Consumer<providers>(builder:(context, val, child) {
        print("only");
        return 
      Text(val.count.toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),);

      }, )
      ),
      floatingActionButton:  FloatingActionButton(onPressed: (){
        countprovider.setCount();
        print(1);
      },child: Icon(Icons.add),),
    );
   
    
  }
}