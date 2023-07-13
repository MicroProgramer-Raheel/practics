import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenForSingleStatefullWidget extends StatelessWidget {
  RxBool isCheck = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Single Widget"),
    ),
      body: Column(children: [
        Obx(() {

          return ListTile(
            onTap: (){
              isCheck.value=!isCheck.value;
            },
            title: Text("check"),
            trailing:Visibility(
              visible: isCheck.value,
              child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                  ),
                  child: Icon(Icons.check,color: Colors.blue,)),
            ),
          );
        })
      ],),
    );
  }
}
