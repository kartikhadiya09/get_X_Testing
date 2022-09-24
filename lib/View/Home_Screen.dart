import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yew_technologies/Controlar/Home____1.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 final hw = Get.put(Homecontrolar());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Drawer(),
          centerTitle: false,
          title: Text("Home v 1.0"),
        ),
        body: Container(
            child: GridView.builder(
              itemCount: hw.Name.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 1.0,
                  mainAxisSpacing: 8.0
              ),
              itemBuilder: (BuildContext context, int index){
                return InkWell(
                  onTap: (){

                    Get.toNamed(hw.Name[index]);

                  },
                  child: Card(
                    shadowColor: Colors.blueGrey,
                    child: Container(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(hw.Ico[index],size: 70,color: Colors.lightGreen,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("${hw.Name[index]}",style: TextStyle(color: Colors.blue,),),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            )),
      ),

    );
  }
}
