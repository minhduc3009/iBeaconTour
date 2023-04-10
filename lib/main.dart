import 'package:flutter/material.dart';
import 'package:iBeaconTour/view/Main_Screen.dart';
import 'core/app_export.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:iBeaconTour/homescreen.dart';
import 'package:iBeaconTour/beacon-001_screen.dart';
import 'package:iBeaconTour/beacon-001EN_screen.dart';
import 'package:iBeaconTour/beacon-001CN_screen.dart';
import 'package:iBeaconTour/beacon-002_screen.dart';
import 'package:iBeaconTour/beacon-002EN_screen.dart';
import 'package:iBeaconTour/beacon-002CN_screen.dart';
import 'package:iBeaconTour/beacon-003_screen.dart';
import 'package:iBeaconTour/beacon-003EN_screen.dart';
import 'package:iBeaconTour/beacon-003CN_screen.dart';
import 'package:iBeaconTour/beacon-004_screen.dart';
import 'package:iBeaconTour/beacon-004EN_screen.dart';
import 'package:iBeaconTour/beacon-004CN_screen.dart';
import 'package:iBeaconTour/find_devices_screen.dart';

late final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

void main() {
  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  runApp(GetMaterialApp(
    // It is not mandatory to use named routes, but dynamic urls are interesting.
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    defaultTransition: Transition.native,
    translations: MyTranslations(),
    locale: Locale('en', 'en_US'),
    getPages: [
      //Simple GetPage
      GetPage(
        name: '/home',
        page: () => MainScreen(),
        binding: SampleBind(),
      ),
      //---------------------------------beacon001------------------------------------
      GetPage(
        name: '/beacon001',
        page: () => Beacon001(),
        // customTransition: SizeTransitions(),
        binding: SampleBind(),
      ),
      GetPage(
        name: '/beacon001en',
        page: () => Beacon001EN(),
        // customTransition: SizeTransitions(),
        binding: SampleBind(),
      ),
      GetPage(
        name: '/beacon001cn',
        page: () => Beacon001CN(),
        // customTransition: SizeTransitions(),
        binding: SampleBind(),
      ),
      //---------------------------------beacon002------------------------------------
      GetPage(
        name: '/beacon002',
        page: () => Beacon002(),
        // customTransition: SizeTransitions(),
        binding: SampleBind(),
      ),
      GetPage(
        name: '/beacon002en',
        page: () => Beacon002EN(),
        // customTransition: SizeTransitions(),
        binding: SampleBind(),
      ),
      GetPage(
        name: '/beacon002cn',
        page: () => Beacon002CN(),
        // customTransition: SizeTransitions(),
        binding: SampleBind(),
      ),
      //---------------------------------beacon003------------------------------------
      GetPage(
        name: '/beacon003',
        page: () => Beacon003(),
        // customTransition: SizeTransitions(),
        binding: SampleBind(),
      ),
      GetPage(
        name: '/beacon003en',
        page: () => Beacon003EN(),
        // customTransition: SizeTransitions(),
        binding: SampleBind(),
      ),
      GetPage(
        name: '/beacon003cn',
        page: () => Beacon003CN(),
        // customTransition: SizeTransitions(),
        binding: SampleBind(),
      ),
      //---------------------------------beacon004------------------------------------
      GetPage(
        name: '/beacon004',
        page: () => Beacon004(),
        // customTransition: SizeTransitions(),
        binding: SampleBind(),
      ),
      GetPage(
        name: '/beacon004en',
        page: () => Beacon004EN(),
        // customTransition: SizeTransitions(),
        binding: SampleBind(),
      ),
      GetPage(
        name: '/beacon004cn',
        page: () => Beacon004CN(),
        // customTransition: SizeTransitions(),
        binding: SampleBind(),
      ),
      //---------------------------------------------------------------------
      GetPage(
        name: '/findDevice',
        page: () => FindDevicesScreen(),
        binding: SampleBind(),
      ),
    ],
  ));
}

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'title': 'Hello World %s',
        },
        'en_US': {
          'title': 'Hello World from US',
        },
        'pt': {
          'title': 'Olá de Portugal',
        },
        'pt_BR': {
          'title': 'Olá do Brasil',
        },
      };
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
  var g_slectLanguage = 0.obs;
  late Worker _ever;
  @override
  onInit() {
    /// Called every time the variable $_ is changed
    _ever = ever(g_slectLanguage,
        (_) => print("$g_slectLanguage has been changed (g_slectLanguage)"));
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
