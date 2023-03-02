import 'package:flutter/foundation.dart';
class fovairate_provider with ChangeNotifier{
var list=[];

get getList=> list;
void setList(int val){
list.add(val);
notifyListeners();
}
void RemoveList(int val){
list.remove(val);
notifyListeners();
}

}