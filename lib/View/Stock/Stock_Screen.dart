import 'package:flutter/material.dart';

class Stock_Page extends StatefulWidget {
  const Stock_Page({Key? key}) : super(key: key);

  @override
  State<Stock_Page> createState() => _Stock_PageState();
}

class _Stock_PageState extends State<Stock_Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Stock"),
        ),
      ),
    );
  }
}
