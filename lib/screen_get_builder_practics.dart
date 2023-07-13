import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practics/screen_obx_controller.dart';

import 'controllers/test_get_builder_controller.dart';

class ScreenGetBuilderPractics extends StatelessWidget {
  TestGetBuilderController controller = Get.put(TestGetBuilderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx"),
      ),
      body: GetBuilder<TestGetBuilderController>(builder: (logic) {
        return Column(children: [
          SwitchListTile(
            value: logic.isDark,
            onChanged: (value) {
            logic.isDark=value;
            logic.update();
          },
            title: Text("Dark mode"),
          ),
          SwitchListTile(
            value: logic.isLight,
            onChanged: (value) {
            logic.isLight=value;
            logic.update();
          },
            title: Text("Dark mode"),
          ),
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

        ],);
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        Get.to(ScreenObxController());
      }, label: Text("Obx")),
    );
  }
}
