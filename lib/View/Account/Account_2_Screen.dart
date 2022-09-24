import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yew_technologies/Controlar/Account___1.dart';

class Account__2 extends StatefulWidget {
  const Account__2({Key? key}) : super(key: key);

  @override
  State<Account__2> createState() => _Account__2State();
}

class _Account__2State extends State<Account__2> {
  List<dynamic> Nam = ['accountName','accountName ','accountId','row Id','ledgerGroupId','user Id','address2 ','address1 ','mobile','panNo','contactPerson','isPurchaseRate','gSTNo','isNotRounding'];

  final ac = Get.put(Accountcontrolar());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${ac.Forvad[0]}"),
      ),
      body:  ListView.builder(
          itemCount: ac.Forvad.length,
          itemBuilder: (context, index) {
            return Expanded(
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding:
                          const EdgeInsets.all(8.0),
                          child: Expanded(
                            child: Text("${Nam[index]}",
                              style: const TextStyle(
                                fontSize: 15.0,
                                fontWeight:
                                FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.all(8.0),
                          child: Expanded(
                            child: Text("${ac.Forvad[index]}",
                              style: const TextStyle(
                                fontSize: 15.0,
                                fontWeight:
                                FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                      ]
                  ),
                  SizedBox(child: Divider())
                ],
              ),
            );
          }),
    );
  }
}
