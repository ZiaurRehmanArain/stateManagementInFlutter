import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/providers/favorate/favorate_povider.dart';

import 'favorate.dart';

class selectItems extends StatefulWidget {
  const selectItems({super.key});

  @override
  State<selectItems> createState() => _selectItemsState();
}

class _selectItemsState extends State<selectItems> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<fovairate_provider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('forvate'),
      actions: [
       IconButton(onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>favoirate()));
       }, icon:  Icon(Icons.heart_broken_outlined))
      ],
      ),

  body: ListView.builder(
        
        itemCount: provider.list.length,
        itemBuilder: (BuildContext, ind){
        return Consumer<fovairate_provider>(builder: ((context, value, child) {
          return ListTile(
          onTap: (){
if(value.list.contains(ind)){

value.RemoveList(ind);
}else{

value.setList(ind);
}

    },
          title: Text("fovarte  ${ind}"),
        trailing:value.getList.contains(ind)?Icon(Icons.favorite) : Icon(Icons.favorite_border_outlined),
        );

        }));
      }),

    );
  }
}