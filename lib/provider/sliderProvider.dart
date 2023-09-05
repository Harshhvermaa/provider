import 'package:flutter/cupertino.dart';

class SliderScreenProvider extends ChangeNotifier{
  double value = 0;

  updateSliderValue(double newvalue){
    value = newvalue;
    notifyListeners();
  }

}