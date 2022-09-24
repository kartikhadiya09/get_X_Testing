
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yew_technologies/Controlar/Item____1.dart';

import '../../Modal/Get_Item.dart';

class Item extends StatefulWidget {
  const Item({Key? key}) : super(key: key);

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
 final it = Get.put(Itemcontrolar());
    return Scaffold(
      appBar: AppBar(
        title: Text("Item"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 8.0),
            child: GestureDetector(
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    size: 36.0,
                  ),
                  if (it.itemlent.length > 0)
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        child: Text(
                          "${it.itemlent.length.obs}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              onTap: () {
                if (it.itemlent.isNotEmpty)
                Get.toNamed('Home');
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
                key: it.formKey,
                child: SizedBox(
                  height: 800,
                  child: Column(children: [
                    SizedBox(
                      height: 10,
                    ),
                    Visibility(
                      visible: true,
                      child: FutureBuilder<GetItem>(
                          future: it.PostItem(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              var data = snapshot.data!.data!.accountmaster!;

                              return Expanded(
                                child: ListView.builder(
                                    itemCount: data.length,
                                    itemBuilder: (context, index) {
                                      var data = snapshot
                                          .data!.data!.accountmaster![index];

                                      return Expanded(
                                        child: Column(
                                          children: [
                                            Container(
                                                height: 100,
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                            child: Text(
                                                              "${data.itemName}",
                                                              style:
                                                              const TextStyle(
                                                                fontSize: 20.0,
                                                                color: Colors
                                                                    .green,
                                                                fontWeight:
                                                                FontWeight
                                                                    .bold,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        IconButton(
                                                            onPressed: () {
                                                              setState(() {
                                                                it.Total?.isNaN;
                                                                it.c?.isEmpty;
                                                                it.c = data
                                                                    .itemName;
                                                                it.aa?.isNaN;
                                                                it.bb?.isNaN;
                                                                it.tttt.isNaN;
                                                                it.tooooo.isNaN;
                                                                it.Acount_ii?.isNaN;
                                                               it.rate.clear();
                                                                it.Qty.clear();
                                                                 it.Car.add(context);
                                                                it.updateDialog();
                                                              });
                                                            },
                                                            icon: Icon(
                                                              Icons
                                                                  .add_box_rounded,
                                                              color:
                                                              Colors.blue,
                                                              size: 38,
                                                            )),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.only(
                                                          right: 5,
                                                          left: 5,
                                                          bottom: 5),
                                                      child: Container(
                                                        height: 1,
                                                        width: double.infinity,
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          right: 10),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        children: [
                                                          Container(
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "HSNNO : ",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                                ),
                                                                Text(
                                                                    "${data.hSNNO}"),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "S.RATE : ",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                                ),
                                                                Text(
                                                                    "${data.salesRate}"),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          right: 10),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        children: [
                                                          Container(
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "GST(%) : ",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                                ),
                                                                Text(
                                                                    "${data.iGSTTAXPerc}"),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "Unit : ",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                                ),
                                                                Text(
                                                                    "${data.rateCalUnit}"),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                            Container(
                                              height: 4,
                                              color: Colors.blueGrey,
                                              width: double.infinity,
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                              );
                            } else {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 300),
                                child: Center(
                                  child: Container(
                                      height: 30,
                                      width: 30,
                                      child: const CircularProgressIndicator()),
                                ),
                              );
                            }
                          }),
                    ),
                  ]),
                ))
          ],
        ),
      ),
    );
  }
}