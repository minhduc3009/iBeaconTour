import '/core/app_export.dart';
import 'package:virtuevuapp2/presentation/s2_screen/models/s2_model.dart';

class S2Controller extends GetxController {
  Rx<S2Model> s2ModelObj = S2Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
