
import 'package:baby_track/controllers/IndexController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IndexController controller = Get.put(IndexController());
    return Scaffold(
      appBar: AppBar(title: Obx(() => Text("Detail: Clicks ${controller.count}")),),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Other"),
          onPressed: () => {},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: controller.increment,
      ),
    );
  }
}
