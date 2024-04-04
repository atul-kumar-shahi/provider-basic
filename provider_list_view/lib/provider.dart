import 'package:flutter/material.dart';

class ProviderListView extends ChangeNotifier{
  List<int>list=[1,2,3];

  void addItem(){
    int lastItem=list.last;
    list.add(lastItem+1);
    notifyListeners();
  }
}