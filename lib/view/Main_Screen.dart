import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../main.dart';
import 'Home_Screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final ControllerX c = Get.put(ControllerX());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/QuangNinh.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 27, right: 20, bottom: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 96,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'welcome_to'.tr,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 17,
                      ),
                      Flexible(
                        child: Text(
                          '_welcome_to_detail'.tr,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Get.to(HomeScreen());
                          // Get.to('/home');
                          Get.off(() => HomeScreen());
                        },
                        child: Container(
                          width: 70,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '_welcome_to_bottom'.tr,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '_welcome_to_bottom_detail'.tr,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
