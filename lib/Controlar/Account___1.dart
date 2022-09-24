import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../Modal/Get_Account.dart';

class Accountcontrolar extends GetxController{




  List<dynamic> accountList = [];
  List<dynamic> Forvad = [];
  final formKey = GlobalKey<FormState>();




  Future<GetAccount> postData()async{
    var url = "http://genaccapp.yewtec.com/api/account/getaccounts";
    var parameter = {"yearid":"${1}","compid":"${1}"};
    print("${parameter.toString()}");
    final response = await http.post(Uri.parse(url),body: parameter);

    if(response.statusCode == 200){
      var data = response.body;
      Map<String, dynamic> map = await json.decode(response.body);
      accountList = map['data']['accountmaster'];
      print("${accountList.length.toString()}");
      return GetAccount.fromJson(jsonDecode(data));
    }
    else
    {
      throw Exception("Filed to load album");
    }
  }

}
