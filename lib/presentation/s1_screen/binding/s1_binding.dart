import '../controller/s1_controller.dart';
import 'package:get/get.dart';

class S1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => S1Controller());
  }
}
