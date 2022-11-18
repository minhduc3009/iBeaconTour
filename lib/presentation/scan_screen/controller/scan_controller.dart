import 'package:virtuevuapp2/core/app_export.dart';
import 'package:virtuevuapp2/presentation/scan_screen/models/scan_model.dart';

class ScanController extends GetxController {
  Rx<ScanModel> scanModelObj = ScanModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
