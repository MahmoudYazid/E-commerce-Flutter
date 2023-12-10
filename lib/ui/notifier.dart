import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class StateShopCart extends ChangeNotifier {

  var shopCart = [];
  List get _shopCart => shopCart;
  var unique = [];
  List get _unique => unique;
  void addToCart(obj) {
    shopCart.add(obj);

    if(unique.where((element) => element["title"]==obj["title"]).length==0){
      unique.add(obj);
    }
    notifyListeners();
  }

  num GetNumber(obj) {
    return shopCart.where((element) => element["title"]==obj["title"]).length;

  }

  bool DelObj(obj) {
    for (var i = 0; i < shopCart.length; i++) {
      if (shopCart[i]["title"] == obj["title"]) {
        shopCart.removeAt(i);
        if (GetNumber(obj)==0) {
          unique.remove(obj);

        }
        return true;
      }
    }
    return false;
  }
}
