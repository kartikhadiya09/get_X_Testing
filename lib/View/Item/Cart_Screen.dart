import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yew_technologies/Controlar/Account___1.dart';
import 'package:yew_technologies/Controlar/Cart____1.dart';
import 'package:yew_technologies/Controlar/Item____1.dart';

import '../../Modal/Get_Account.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}
final ac = Get.put(Accountcontrolar());
final cc = Get.put(Cartcontrolar());
final ic = Get.put(Itemcontrolar());

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded),
        ),
        title: Text("Cart"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 8.0),
            child: GestureDetector(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Icon(
                    Icons.save,
                    size: 36.0,
                  ),
                ],
              ),
              onTap: () {
                cc.Car.add(context);
                updateDialog();
                // Navigator.pushNamed(context,'Pending Sales Bill', );
              },
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: ListView.builder(
                itemCount: ic.NetAmount.length,
                itemBuilder: (context, index) {
                  num fac = pow(10, cc.decimals);
                  ic.NetAmount[index]=(ic.NetAmount[index] * fac).round() / fac;

                  return Expanded(
                    child: Column(
                      children: [
                        Card(
                          elevation: 10,
                          child: Container(
                              height: 150,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "${ic.NameItem[index]}",
                                            style: const TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),

                                           IconButton(
                                              onPressed: () {
                                                ic.NetAmount.remove(ic.NetAmount[index]);
                                                ic.Total_Amount.remove(ic.Total_Amount[index]);
                                                ic.NameItem.remove(ic.NameItem[index]);
                                                ic.Rate.remove(ic.Rate[index]);
ic.qyntty.remove(ic.qyntty[index]);
                                              },
                                              icon: Icon(
                                                Icons.remove_circle_outline,
                                                color: Colors.blue,
                                                size: 38,
                                              )),

                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 5, left: 5, bottom: 5),
                                    child: Container(
                                      height: 1,
                                      width: double.infinity,
                                      color: Colors.black26,
                                    ),
                                  ),
                                  Container(
                                    height: 90,
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "Quantity : ",
                                                      style: TextStyle(
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                    Text(
                                                        "${ic.qyntty[index]}"),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "RATE : ",
                                                      style: TextStyle(
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                    Text(
                                                        "${ic.Rate[index]}"),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "GST(%) : ",
                                                      style: TextStyle(
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                    Text("18 %"),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "Per Unit GST Rate: ",
                                                      style: TextStyle(
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                    Text(
                                                        "${ic.NetAmount[index]}"),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            right: 3,
                                            left: 3,
                                          ),
                                          child: Container(
                                            height: 2,
                                            width: double.infinity,
                                            color: Colors.black26,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Expanded(
                                            child: Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Item Total MRP :- ",
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.w400,
                                                        fontSize: 23),
                                                  ),
                                                  Text(
                                                    "${ic.Amount[index]}",
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.w400,
                                                        fontSize: 24),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                    child: Container(
                      height: 5,
                    )),
                Container(
                  height: 2,
                  color: Colors.black,
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Amount :- ",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 30),
                        ),
                        Text(
                          "1111111",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  void updateDialog() {
    showDialog(
        context:cc.Car[0],
        builder: (context) {
          return AlertDialog(
            actions: [
              Container(
                height: 699,
                width: 499,
                child: Column(
                  children: [
                    Expanded(
                      child: FutureBuilder<GetAccount>(
                          future: ac.postData(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              var data = snapshot.data!.data!.accountmaster!;

                              return ListView.builder(
                                  itemCount: data.length,
                                  itemBuilder: (context, index) {
                                    var data = snapshot
                                        .data!.data!.accountmaster![index];

                                    return InkWell(
                                      onTap: () {
                                        final snackBar = SnackBar(
                                          content: const Text('Yay! A SnackBar!'),
                                          action: SnackBarAction(
                                            label: 'Undo',
                                            onPressed: () {},
                                          ),
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);

                                      },
                                      child: Expanded(
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 49,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.all(7.0),
                                                    child: Text(
                                                      data.accountName.toString(),
                                                      style: const TextStyle(
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                  Icon(Icons
                                                      .arrow_forward_ios_outlined)
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 3,
                                              color: Colors.blueGrey,
                                              width: double.infinity,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            } else {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 299),
                                child: Center(
                                  child: Container(
                                      height: 29,
                                      width: 29,
                                      child: const CircularProgressIndicator()),
                                ),
                              );
                            }
                          }),
                    ),
                  ],
                ),
              ),
            ],
          );
        });

  }
}
