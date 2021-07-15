import 'package:fashion_app/src/router/router_path.dart';
import 'package:fashion_app/src/screen/add_address_screen.dart';
import 'package:fashion_app/src/screen/checkout_screen.dart';
import 'package:fashion_app/src/screen/choice_address_screen.dart';
import 'package:fashion_app/src/screen/detail_product_screen.dart';
import 'package:fashion_app/src/screen/my_order_screen.dart';
import 'package:fashion_app/src/screen/order_detail_screen.dart';
import 'package:fashion_app/src/screen/order_success_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Routerr{
  static RouteFactory onGenerateRouter = (RouteSettings settings){
    switch(settings.name){
      case DetailProductScreens:
        return _generateMaterialRoute(DetailProductScreen());
      case CheckoutScreens:
        return _generateMaterialRoute(CheckoutScreen());
      case ChoiceAddressScreens:
        return _generateMaterialRoute(ChoiceAddressScreen());
      case AddAddressScreens:
        return _generateMaterialRoute(AddAddressScreen());
      case OrderSuccessScreens:
        return _generateMaterialRoute(OrderSuccessScreen());
      case MyOrderScreens:
        return _generateMaterialRoute(MyOrderScreen());
      case OrderDetailScreens:
        return _generateMaterialRoute(OrderDetailScreen());
      default:
        return _generateMaterialRoute(Center(child: Text("On Unknown Router",style: TextStyle(
          color: Colors.red,
          fontSize: 25,
        ),),));
    }
  };
}

PageTransition _generateMaterialRoute(Widget screen) {
  return PageTransition(child: screen,type: PageTransitionType.fade);
}