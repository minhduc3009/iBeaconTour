import '/core/app_export.dart';
import 'package:virtuevuapp2/presentation/s3_screen/models/s3_model.dart';

class S3Controller extends GetxController {
  Rx<S3Model> s3ModelObj = S3Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
