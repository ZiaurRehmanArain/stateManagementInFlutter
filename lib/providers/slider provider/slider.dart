import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/providers/slider%20provider/slider_provider.dart';

class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  // var value = 1.0;
  @override
  Widget build(BuildContext context) {
    print('build');
    // final provider=Provider.of<slider_provider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('slider'),
      ),
      body: Column(children: [
        Center(
          child: Consumer<slider_provider>(builder: ( (context, value, child) {
            return Slider(
              min: 0,
              max: 1,
              value:  value.values,
              onChanged: (val) {
             value.setValue(val);
              });
            
          }))
        ),
        Row(
          children: [
            Expanded(
                child: Consumer<slider_provider>(builder: (context, value, child) {
                  return Container(
                  child: Text('first container'),

              height: 150,
              decoration: BoxDecoration(color: Colors.green.withOpacity(value.values)),
            );
                })),
            Expanded(
                child: Consumer<slider_provider>(builder: (context, value, child) {
                  return Container(
                  child: Text('first container'),

              height: 150,
              decoration: BoxDecoration(color: Colors.blue.withOpacity(value.values)),
            );
                })),
          ],
        )
      ]),
    );
  }
}
