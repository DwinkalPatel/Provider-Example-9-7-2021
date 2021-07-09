//model extending changenotifier
import 'package:flutter/cupertino.dart';


class DataModel with ChangeNotifier{

  int count=0;
  void incresedValue(){
    count++;
    notifyListeners();
    //notifies the providers
  }

}