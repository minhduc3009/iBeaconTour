import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iBeaconTour/beacon-002_screen.dart';
import 'package:iBeaconTour/beacon-003_screen.dart';
import 'package:iBeaconTour/beacon-004_screen.dart';
import 'package:iBeaconTour/beacon-005_screen.dart';
import 'package:iBeaconTour/view/Hotel_Screen.dart';
import 'package:iBeaconTour/view/Restaurant_Screen.dart';
import 'package:iBeaconTour/view/Taxi_Screen.dart';
import '../beacon-001_screen.dart';
// import '../const.dart';
import '../language.dart';
import '../main.dart';
import 'Main_Screen.dart';

class HomeScreen extends StatefulWidget {
  // const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final ControllerX c = Get.put(ControllerX());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.orange,
                      ),
                      Text(
                        '_appbar_title'.tr,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17),
                      )
                    ],
                  ),
                  DropdownButton<Language>(
                    underline: const SizedBox(
                      width: 38.0,
                      height: 38.0,
                    ),
                    icon: const Icon(
                      Icons.language,
                      color: Colors.green,
                    ),
                    iconSize: 36,
                    onChanged: (Language? language) async {
                      if (language != null) {
                        c.g_slectLanguage.value = language.id;
                        print(
                            "------------>>>>>>>>>>>>> c.g_slectLanguage.value = ${c.g_slectLanguage.value}");
                        if (c.g_slectLanguage.value == 1) {
                          Locale locale = const Locale('vi', 'vi_vn');
                          Get.updateLocale(locale);
                          Get.to(() => HomeScreen());
                        } else if (c.g_slectLanguage.value == 2) {
                          Locale locale = const Locale('en', 'en_US');
                          Get.updateLocale(locale);
                          Get.to(() => HomeScreen());
                        }
                      }
                    },
                    items: Language.languageList()
                        .map<DropdownMenuItem<Language>>(
                          (e) => DropdownMenuItem<Language>(
                            value: e,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(
                                  e.flag,
                                  style: const TextStyle(fontSize: 30),
                                ),
                                Text(e.name)
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
              SizedBox(
                height: 150.0,
                child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: ImagesList.length,
                  itemBuilder: (BuildContext context, int index) => Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(ImagesList[index]),
                            fit: BoxFit.cover,
                          )),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.map,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Text(
                                CityList[index],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: 60.0,
                child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: SuggestList.length,
                  itemBuilder: (BuildContext context, int index) => Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            offset: Offset(
                              4,
                              8,
                            ), // Shadow position
                          ),
                        ]),
                    child: GestureDetector(
                        onTap: () {
                          print('Item $index tapped');
                          switch (index) {
                            case 0:
                              Get.to(const TaxiInfoScreen());
                              break;
                            case 1:
                              Get.to(const HotelInfoScreen());
                              break;
                            case 2:
                              Get.to(const RestaurantInfoScreen());
                              break;
                            default:
                          }
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: Text(
                              SuggestList[index],
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ))
                          ],
                        )),
                  ),
                ),
              ),
              SizedBox(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: ImagesList.length,
                    itemBuilder: ((context, index) => Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                print(index);
                                switch (index) {
                                  case 0:
                                    Get.to(Beacon001());
                                    break;
                                  case 1:
                                    Get.to(Beacon002());
                                    break;
                                  case 2:
                                    Get.to(Beacon003());
                                    break;
                                  case 3:
                                    Get.to(Beacon004());
                                    break;
                                  case 4:
                                    Get.to(Beacon005());
                                    break;
                                  default:
                                }
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(10),
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(ImagesList[index]),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    CityList[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const Icon(Icons.menu_rounded)
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                  Text('5.0')
                                ],
                              ),
                            )
                          ],
                        ))),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/findDevice');
          if (kDebugMode) {
            print("----------> Button Press to SCAN");
          }
        },
        child: const Icon(Icons.bluetooth_audio),
      ),
    );
  }
}
// import 'package:get/get.dart';

List<String> ImagesList = [
  'assets/images/img_beacon01.jpg',
  'assets/images/img_beacon02.jpg',
  'assets/images/img_beacon03.jpg',
  'assets/images/img_beacon04.jpg',
  'assets/images/img_beacon05.jpg',
];
List<String> CityList = [
  '_beacon_1_name'.tr,
  '_beacon_2_name'.tr,
  '_beacon_3_name'.tr,
  '_beacon_4_name'.tr,
  '_beacon_5_name'.tr,
];

List<String> SuggestList = [
  '_taxi'.tr,
  '_hotels'.tr,
  // '_atms'.tr,
  '_food'.tr,
  // '_best_places'.tr,
];
List<String> SuggestList_new = [
  '_taxi'.tr,
  '_hotels'.tr,
  // '_atms'.tr,
  '_food'.tr,
  // '_best_places'.tr,
  // 'Link 1',
  // 'Link 2',
  // 'Link 3',
];
