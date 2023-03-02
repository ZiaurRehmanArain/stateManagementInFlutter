import 'package:flutter/material.dart';

class  providers with ChangeNotifier{
int count=0;
int get counts=>count;
void setCount(){
  count++;
  notifyListeners();
}

}