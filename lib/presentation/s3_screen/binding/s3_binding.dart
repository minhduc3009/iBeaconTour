import '../controller/s3_controller.dart';
import 'package:get/get.dart';

class S3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => S3Controller());
  }
}
