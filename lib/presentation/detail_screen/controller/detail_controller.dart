import 'package:iBeaconTour/core/app_export.dart';
import 'package:iBeaconTour/presentation/detail_screen/models/detail_model.dart';

class DetailController extends GetxController {
  Rx<DetailModel> detailModelObj = DetailModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
