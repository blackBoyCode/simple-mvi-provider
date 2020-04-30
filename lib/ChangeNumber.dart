import 'dart:math';

import 'package:flutter/foundation.dart';

//in order to use the Provider
//I need a class with methods that I would want to invoke
//when calling
class ChangeNumber with ChangeNotifier {
  int a = 0; //the variable that need to update along with text widget

  setRandomNumber() {
    a = Random().nextInt(5); //set the variable to something
    notifyListeners(); //call this method to update widgets from Consumer<ChangeNumber>
  }
}
