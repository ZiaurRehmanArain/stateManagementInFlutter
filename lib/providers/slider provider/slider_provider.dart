import 'package:flutter/foundation.dart';

class slider_provider with ChangeNotifier{
 var _value=1.0;
 double get values=>_value;

void setValue(double val){
  _value=val;
  notifyListeners();
}
}