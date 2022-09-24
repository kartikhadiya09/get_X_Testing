import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:yew_technologies/View/Item/Item_Screen.dart';

import '../Modal/Get_Item.dart';

class  Itemcontrolar extends GetxController {
  final formKey = GlobalKey<FormState>();
  static final riKey1 = const Key('__RIKEY1__');
  TextEditingController Qty = TextEditingController();
  TextEditingController rate = TextEditingController();
  var Car = [].obs;
  String? c;
  int? aa;
    int? bb;
  List<dynamic> qyntty=[];
  double tttt = 0;
  dynamic TAMOUNT=0;
  double tooooo = 0;
  RxList itemlent = [].obs;
double? TotalwGST;
double Totarate=0;
  List<dynamic> accountList = [];
  int? Acount_ii;

  Future<GetItem> PostItem() async {
    var url = "http://genaccapp.yewtec.com/api/item/getitems";
    var parameter = {"yearid": "${1}", "compid": "${1}"};
    print("ppppppppppera==========${parameter.toString()}");
    final response = await http.post(Uri.parse(url), body: parameter);

    if (response.statusCode == 200) {
      print("================${response.statusCode}");
      var data = response.body;
      Map<String, dynamic> map = await json.decode(response.body);
      accountList = map['data']['accountmaster'];
      print("${accountList.length.toString()}");
      return GetItem.fromJson(jsonDecode(data));
    } else {
      throw Exception("Filed to load album");
    }
  }


  void updateDialog() {
    showDialog(
        context: Car[0],
        builder: (context) {
          return AlertDialog(
            title: Text("Add To Cart"),

            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: Colors.red,
                  ))
            ],
            content: Form(
                key: riKey1,
                child: Container(
                  height: 220,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: SizedBox(
                        width: 200,
                        height: 50,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: Qty,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Field is Empty';
                            }

                            return null;
                          },
                          decoration: const InputDecoration(
                              errorStyle: TextStyle(fontSize: 10),
                              hintText: 'QTY',
                              labelStyle: TextStyle(color: Colors.black),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(9.0)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(9.0)),
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: SizedBox(
                        width: 200,
                        height: 50,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: rate,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Field is Empty';
                            }

                            return null;
                          },
                          decoration: const InputDecoration(
                              errorStyle: TextStyle(fontSize: 10),
                              hintText: 'RATE',
                              labelStyle: TextStyle(color: Colors.black),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(9.0)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(9.0)),
                              )),
                        ),
                      ),
                    ),


                         ElevatedButton(
                          onPressed: () {
                            itemlent.add(1);
                            aa = int.parse(Qty.text);
                            bb = int.parse(rate.text);
                            tttt = (aa! * bb!) * 18;
                            tooooo = tttt/100+tttt/18;
                            TAMOUNT += tooooo;
                            Totarate=tttt/100+tttt/18 ;
                             TotalwGST=tooooo/aa!;
                            adddata( Total_Amount, TotalwGST,7,7,aa, bb, TAMOUNT, 30,c);
                            if (formKey.currentState!.validate()) {
                           Get.back();
                            }

                          },
                          child: const Text("Get Account"),
                        ),

                  ]),
                )),

          );
        });
  }


  void adddata( t_am,net_am ,y_id, c_id, _Q, _Rate, amoun, u_id,i_nam) {

    Total_Amount.add(t_am);
    NetAmount.add(net_am);
    yearid.add(y_id);
    compid.add(c_id);
    qyntty.add(_Q);
    Rate.add(_Rate);
    Amount.add(amoun);
    Unit_Id.add(u_id);
     NameItem.add(i_nam);

  }


  List<dynamic> Account_iI =[];
  List<dynamic> Total_Amount=[];
  List<dynamic> NetAmount=[];
  List<dynamic> yearid=[];
  List<dynamic> compid=[];
  List<dynamic> Rate=[];
  List<dynamic> Amount=[];
  List<dynamic> Unit_Id=[];
  List<String> NameItem= [];





  double? Total;
  List cartList = [];
 // var Car = [];
  List additem = [];
}