import 'package:flutter/material.dart';
import 'package:iBeaconTour/view/Home_Screen.dart';
import 'package:iBeaconTour/view/Hotel_Screen.dart';
import 'package:iBeaconTour/view/Main_Screen.dart';
import 'package:get/get.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:iBeaconTour/beacon-001_screen.dart';
import 'package:iBeaconTour/beacon-002_screen.dart';
import 'package:iBeaconTour/beacon-003_screen.dart';
import 'package:iBeaconTour/beacon-004_screen.dart';
import 'package:iBeaconTour/beacon-005_screen.dart';
import 'package:iBeaconTour/find_devices_screen.dart';
import 'package:iBeaconTour/view/Restaurant_Screen.dart';
import 'package:iBeaconTour/view/Taxi_Screen.dart';
import 'language.dart';
import 'package:permission_handler/permission_handler.dart';

late final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

Future<void> main() async {
  runApp(iBeaconTourApp());
  await Permission.location.request();
}

class iBeaconTourApp extends StatelessWidget {
  const iBeaconTourApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // It is not mandatory to use named routes, but dynamic urls are interesting.
      debugShowCheckedModeBanner: false,
      initialRoute: '/main',
      defaultTransition: Transition.native,
      translations: Languages(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale('vi'),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      getPages: [
        GetPage(
          name: '/main',
          page: () => MainScreen(),
          binding: SampleBind(),
        ),
        GetPage(
          name: '/home',
          page: () => HomeScreen(),
          binding: SampleBind(),
        ),
        GetPage(
          name: '/beacon001',
          page: () => Beacon001(),
          // customTransition: SizeTransitions(),
          binding: SampleBind(),
        ),
        GetPage(
          name: '/beacon002',
          page: () => Beacon002(),
          // customTransition: SizeTransitions(),
          binding: SampleBind(),
        ),
        GetPage(
          name: '/beacon003',
          page: () => Beacon003(),
          // customTransition: SizeTransitions(),
          binding: SampleBind(),
        ),
        GetPage(
          name: '/beacon004',
          page: () => Beacon004(),
          // customTransition: SizeTransitions(),
          binding: SampleBind(),
        ),
        GetPage(
          name: '/beacon005',
          page: () => Beacon005(),
          // customTransition: SizeTransitions(),
          binding: SampleBind(),
        ),
        GetPage(
          name: '/findDevice',
          page: () => FindDevicesScreen(),
          binding: SampleBind(),
        ),
        GetPage(
          name: '/taxi',
          page: () => TaxiInfoScreen(),
        ),
        GetPage(
          name: '/hotel',
          page: () => HotelInfoScreen(),
        ),
        GetPage(
          name: '/restaurant',
          page: () => RestaurantInfoScreen(),
        ),
      ],
    );
  }
}

class SampleBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ControllerX>(() => ControllerX());
  }
}

class User {
  User({this.name = 'Name', this.age = 0});
  String name;
  int age;
}

class ControllerX extends GetxController {
  // var g_slectLanguage = 0.obs;
  late Worker _ever;
  var language = 'vi'.obs;
  // @override
  // onInit() {
  //   /// Called every time the variable $_ is changed
  //   _ever = ever(g_slectLanguage,
  //       (_) => print("$g_slectLanguage has been changed (g_slectLanguage)"));
  // }

  @override
  void onInit() {
    super.onInit();
    changeLanguage('vi');
  }

  void changeLanguage(String newLanguage) {
    language.value = newLanguage;
    Get.updateLocale(Locale(newLanguage));
  }

  disposeWorker() {
    _ever.dispose();
    // or _ever();
  }
}

class SizeTransitions extends CustomTransition {
  @override
  Widget buildTransition(
      BuildContext context,
      Curve? curve,
      Alignment? alignment,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return Align(
      alignment: Alignment.center,
      child: SizeTransition(
        sizeFactor: CurvedAnimation(
          parent: animation,
          curve: curve!,
        ),
        child: child,
      ),
    );
  }
}
