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
                    children: const [
                      Text(
                        "Welcome to\n",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        height: 17,
                      ),
                      Flexible(
                        child: Text(
                          'Quảng Ninh là tỉnh ven biển thuộc vùng Đông Bắc Bộ Việt Nam Theo quy hoạch phát triển kinh tế, Quảng Ninh vừa thuộc vùng kinh tế trọng điểm phía bắc vừa thuộc Vùng duyên hải Bắc Bộ. Đây là tỉnh khai thác than đá chính của Việt Nam, có vịnh Hạ Long là di sản, kỳ quan thiên nhiên thế giới.',
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
                          Get.off(const HomeScreen());
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
                    children: const [
                      Text(
                        "Dự Án",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Khoa học sáng tạo",
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
