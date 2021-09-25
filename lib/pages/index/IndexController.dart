import 'dart:async';

import 'package:get/get.dart';

class IndexController extends GetxController {
  var count = 0.obs;
  var currentIndex = 0;

  increment() => count++;

  changCurrentIndex(int index) {
    currentIndex = index;
    update();
  }
}
