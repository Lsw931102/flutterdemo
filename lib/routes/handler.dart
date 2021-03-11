import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutterdemo/pages/home.dart';
import 'package:flutterdemo/pages/shopping.dart';
import 'package:flutterdemo/pages/login.dart';

// 首页
Handler homePageHanderl = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return HomePage();
});

// 购物页
Handler shoppingListHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return ShoppingList();
  },
);

// // 路由传参
// Handler routingReferenceHanderl = Handler(
//     handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//   String id = params['id'].first;
//   return RoutingReference(id: id);
// });

// 登陆页面
Handler loginHanderl = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LoginPage();
});

// 404

Handler notFoundHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    print('ERROR====>ROUTE WAS NOT FONUND!!!'); // 找不到路由，跳转404页面
    print('找不到路由，404');
    return null;
  },
);
