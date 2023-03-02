import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/providers/favorate/favorate_povider.dart';
import 'package:test/providers/favorate/selectItem.dart';

class favoirate extends StatefulWidget {
  const favoirate({super.key});

  @override
  State<favoirate> createState() => _favoirateState();
}

class _favoirateState extends State<favoirate> {
  var selectItem=[];
  @override
  Widget build(BuildContext context) {
    print('selectitem  ${selectItem}');
    // var provider=Provider.of<fovairate_provider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('forvate'),
      actions: [
       IconButton(onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>selectItems()));
       }, icon:  Icon(Icons.heart_broken_outlined))
      ],
      ),

      body: ListView.builder(
        
        itemCount: 100,
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