import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class StateShopCart extends ChangeNotifier {

  var shopCart = [];

  List get _shopCart => shopCart;

  void addToCart(obj) {
    shopCart.add(obj);
    notifyListeners();
  }


}
