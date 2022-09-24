import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yew_technologies/Controlar/Account___1.dart';

import '../../Modal/Get_Account.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final ac = Get.put(Accountcontrolar());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
                key: ac.formKey,
                child: SizedBox(
                  height: 800,
                  child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: [
                        //     Padding(
                        //       padding: const EdgeInsets.all(4),
                        //       child: SizedBox(
                        //         width: 170,
                        //         height: 50,
                        //         child: TextFormField(
                        //           controller: yearId,
                        //           validator: (value) {
                        //             if (value!.isEmpty) {
                        //               return 'Field is Empty';
                        //             }
                        //
                        //             return null;
                        //           },
                        //           decoration: const InputDecoration(
                        //               errorStyle: TextStyle(fontSize: 10),
                        //               hintText: 'YearId',
                        //               labelStyle: TextStyle(color: Colors.black),
                        //               focusedBorder: OutlineInputBorder(
                        //                 borderRadius:
                        //                 BorderRadius.all(Radius.circular(9.0)),
                        //               ),
                        //               enabledBorder: OutlineInputBorder(
                        //                 borderRadius:
                        //                 BorderRadius.all(Radius.circular(9.0)),
                        //               )),
                        //         ),
                        //       ),
                        //     ),
                        //     Padding(
                        //       padding: const EdgeInsets.all(4),
                        //       child: SizedBox(
                        //         width: 170,
                        //         height: 50,
                        //         child: TextFormField(
                        //           controller: comId,
                        //           validator: (value) {
                        //             if (value!.isEmpty) {
                        //               return 'Field is Empty';
                        //             }
                        //
                        //             return null;
                        //           },
                        //           decoration: const InputDecoration(
                        //               errorStyle: TextStyle(fontSize: 10),
                        //               hintText: 'ComId',
                        //               labelStyle: TextStyle(color: Colors.black),
                        //               focusedBorder: OutlineInputBorder(
                        //                 borderRadius:
                        //                 BorderRadius.all(Radius.circular(9.0)),
                        //               ),
                        //               enabledBorder: OutlineInputBorder(
                        //                 borderRadius:
                        //                 BorderRadius.all(Radius.circular(9.0)),
                        //               )),
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     if (formKey.currentState!.validate()) {
                        //       postData();
                        //       setState(() {
                        //         isChecked = !isChecked;
                        //       });
                        //     }
                        //   },
                        //   child: const Text("Get Account"),
                        // ),
                        Visibility(
                          visible: true /*isChecked*/,
                          child: Expanded(
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
                                              setState(() {
                                                  ac.Forvad.clear();
                                                    ac.Forvad.add(data.accountName);
                                                  ac.Forvad.add(data.accountName);
                                                  ac.Forvad.add(data.accountId);
                                                  ac.Forvad.add(data.rowId);
                                                  ac.Forvad.add(data.ledgerGroupId);
                                                  ac.Forvad.add(data.userId);
                                                  ac.Forvad.add(data.address2);
                                                  ac.Forvad.add(data.address1);
                                                  ac.Forvad.add(data.mobile);
                                                  ac.Forvad.add(data.panNo);
                                                  ac.Forvad.add(data.contactPerson);
                                                  ac.Forvad.add(data.isPurchaseRate);
                                                  ac.Forvad.add(data.gSTNo);
                                                  ac.Forvad.add(data.isNotRounding);




                                              });
                                            Get.toNamed("Account__2");
                                            },
                                            child: Expanded(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          child: Text(
                                                            data.accountName.toString(),
                                                            style: const TextStyle(
                                                              fontSize: 15.0,
                                                              fontWeight:
                                                              FontWeight.bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Icon(Icons.arrow_forward_ios_outlined)

                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 4,
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
                                      padding: const EdgeInsets.only(bottom: 300),
                                      child: Center(
                                        child: Container(
                                            height: 30,
                                            width: 30,
                                            child:
                                            const CircularProgressIndicator()),
                                      ),
                                    );
                                  }
                                }),
                          ),
                        ),
                      ]),
                ))
          ],
        ),
      ),
    );
  }
}
