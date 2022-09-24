

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:yew_technologies/View/Account/Account_2_Screen.dart';
import 'package:yew_technologies/View/Account/Account_Screen.dart';
import 'package:yew_technologies/View/Home_Screen.dart';

import 'View/Bill/Bill_Screen.dart';
import 'View/Item/Cart_Screen.dart';
import 'View/Item/Item_Screen.dart';
import 'View/Order/Order_Screen.dart';
import 'View/Stock/Stock_Screen.dart';

void main() {
  runApp(My_App());
}

class My_App extends StatefulWidget {
  const My_App({Key? key}) : super(key: key);

  @override
  State<My_App> createState() => _My_AppState();
}

class _My_AppState extends State<My_App> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StateManagement with getx',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      routes: {
        '/':(context)=>Home(),
        'Account':(context)=>Account(),
        'Account__2':(context)=>Account__2(),
        'Stock':(context)=> Stock_Page(),
        'Item':(context)=>Item(),
        'Pending Sales Bill':(context)=> Bill(),
        'Order':(context)=>Order(),



       'Cart':(context)=>Cart(),
      //  'O_comp':(context)=>O_complet(),

      },
    );
  }
}
