import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practics/controllers/test_obx_controller.dart';
import 'package:practics/screen_for_single_statefull_widget.dart';

class ScreenGetXController extends StatelessWidget {
  TestObxController controller = Get.find<TestObxController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Controller"),

      ),
      body: GetX<TestObxController>(
        init: TestObxController(),
        initState: (_) {},
        builder: (haider) {
          return Column(
            children: [
              SwitchListTile(
                value: haider.isDark.value,
                onChanged: (newValue) {
                  haider.isDark.value=newValue;
                },
                title: Text("Dark mode"),
              ),
              SwitchListTile.adaptive(
                value: haider.isLight.value,
                onChanged: (value) {
                  haider.isLight.value=value;
                },
                title: Text("Light mode"),
              ),
            ],
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        Get.to(ScreenForSingleStatefullWidget());
      }, label: Text("Single Screen Widget")),

    );
  }
}
