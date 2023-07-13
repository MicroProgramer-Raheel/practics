import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practics/controllers/test_obx_controller.dart';
import 'package:practics/screen_get_x_controller.dart';

class ScreenObxController extends StatelessWidget {

  TestObxController controller = Get.put(TestObxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Obx Controller"),
        ),
        body: Column(children: [
          Obx(() {
            return SwitchListTile(
              value: controller.isDark.value,
              onChanged: (value) {
                controller.isDark.value = value;
              },
              title: Text("Dark mode"),
            );
          }),
          Obx(() {
            return SwitchListTile(
              value:controller.isLight.value,
              onChanged: (value) {
                controller.isLight.value=value;
              },
              title: Text("Dark mode"),
            );
          }),
          // RadioListTile(
          //     title: Text("Male"),
          //     value: value, groupValue: groupValue, onChanged: (value) {
          //
          // }),
          // RadioListTile(
          //     title: Text("Female"),
          //     value: value, groupValue: groupValue, onChanged: (value) {
          //
          // }),
          // CheckboxListTile(value: true, onChanged: (value) {},
          //   title: Text("check"),
          // )

        ],),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        Get.to(ScreenGetXController());
      }, label: Text("Get x")),
    );
  }
}
