import '../controller/s2_controller.dart';
import 'package:get/get.dart';

class S2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => S2Controller());
  }
}
