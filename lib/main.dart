import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:museum_smart/widgets/app_bar/custom_app_bar.dart';
import 'package:museum_smart/widgets/custom_drop_down.dart';

import 'core/app_export.dart';
import 'dart:ui';
import 'package:get/get.dart';

import 'dart:async';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:museum_smart/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:museum_smart/video_list.dart';
import 'package:museum_smart/homescreen.dart';
import 'package:museum_smart/beacon-001_screen.dart';
import 'package:museum_smart/beacon-002_screen.dart';
import 'package:museum_smart/beacon-003_screen.dart';
import 'package:museum_smart/beacon-004_screen.dart';
import 'package:museum_smart/find_devices_screen.dart';

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
      GetPage(name: '/home', page: () => HomePageScreen()),
      // GetPage with custom transitions and bindings
      GetPage(
        name: '/beacon001',
        page: () => Beacon001(),
        customTransition: SizeTransitions(),
        binding: SampleBind(),
      ),
      // GetPage with default transitions
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

class Controller extends GetxController {
  int count = 0;
  void increment() {
    count++;
    // use update method to update all count variables
    update();
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
  // final count1 = 0.obs;
  // final count2 = 0.obs;
  // final list = [56].obs;
  // final user = User().obs;

  // updateUser() {
  //   user.update((value) {
  //     value!.name = 'Jose';
  //     value.age = 30;
  //   });
  // }

  late Worker _ever;

  // @override
  // onInit() {
  //   /// Called every time the variable $_ is changed
  //   _ever = ever(count1, (_) => print("$_ has been changed (ever)"));

  //   everAll([count1, count2], (_) => print("$_ has been changed (everAll)"));

  //   /// Called first time the variable $_ is changed
  //   once(count1, (_) => print("$_ was changed once (once)"));

  //   /// Anti DDos - Called every time the user stops typing for 1 second, for example.
  //   debounce(count1, (_) => print("debouce$_ (debounce)"),
  //       time: Duration(seconds: 1));

  //   /// Ignore all changes within 1 second.
  //   interval(count1, (_) => print("interval $_ (interval)"),
  //       time: Duration(seconds: 1));
  // }

  // int get sum => count1.value + count2.value;

  // increment() => count1.value++;

  // increment2() => count2.value++;

  disposeWorker() {
    _ever.dispose();
    // or _ever();
  }

  // incrementList() => list.add(75);
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
