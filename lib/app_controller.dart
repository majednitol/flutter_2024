import 'package:get/get.dart';

class AppController extends GetxController {
  RxInt n = 0.obs;
  // RxString name = "".obs;
  void increment() => {
    n++
  };
   void decrement() => {
    n--
  };
}
