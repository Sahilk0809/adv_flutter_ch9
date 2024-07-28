import 'package:adv_ch_9/utils/global.dart';
import 'package:flutter/cupertino.dart';

class ECommerceHomeProvider extends ChangeNotifier{
  String? search;

  void searchProducts(String value){
    search = value;
    notifyListeners();
  }

  void removeSearch(){
    txtEcommerceSearch.clear();
    notifyListeners();
  }
}