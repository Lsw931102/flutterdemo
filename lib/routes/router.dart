import 'package:fluro/fluro.dart';
import './handler.dart';

class Routes {
  static String root = "/";
  static String shoopingList = '/shoppingList';
  static String login = '/login';
  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = notFoundHanderl;

    // 路由页面配置
    router.define(root, handler: homePageHanderl);
    router.define(login, handler: loginHanderl);
    router.define(shoopingList, handler: shoppingListHanderl);
  }
}
