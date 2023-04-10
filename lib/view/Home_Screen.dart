import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iBeaconTour/beacon-002_screen.dart';
import 'package:iBeaconTour/beacon-003_screen.dart';
import 'package:iBeaconTour/beacon-004_screen.dart';
import '../beacon-001_screen.dart';
import '../const.dart';
import '../core/utils/image_constant.dart';
import '../language.dart';
import '../main.dart';
import '../widgets/common_image_view.dart';
import '/view/Visit_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
      ///Bottom Navigation Bar
      // bottomNavigationBar: CurvedNavigationBar(
      //   key: _bottomNavigationKey,
      //   index: 2,
      //   height: 60.0,
      //   items: const <Widget>[
      //     Icon(Icons.perm_identity, size: 30),
      //     Icon(Icons.add, size: 30),
      //     Icon(Icons.home, size: 30),
      //     Icon(Icons.favorite, size: 30),
      //     Icon(Icons.location_on, size: 30),
      //   ],
      //   color: Colors.white,
      //   buttonBackgroundColor: Colors.orangeAccent,
      //   backgroundColor: Colors.white,
      //   animationCurve: Curves.easeInOut,
      //   animationDuration: Duration(milliseconds: 500),
      //   onTap: (index) {
      //     setState(() {
      //       _page = index;
      //       print("------>>>>>>>       $_page");
      //       if (_page == 0) {
      //         Get.toNamed('/findDevice');
      //       }
      //     });
      //   },
      //   letIndexChange: (index) => true,
      // ),
      // appBar: AppBar(
      //   title: const Text(' '),
      // ),
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
                  const Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.orange,
                      ),
                      Text(
                        'Quảng Ninh, Việt Nam',
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
                      color: Color.fromARGB(255, 18, 51, 235),
                    ),
                    iconSize: 36,
                    onChanged: (Language? language) async {
                      if (language != null) {
                        c.g_slectLanguage.value = language.id;
                      } else
                        c.g_slectLanguage.value = 1;
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
                height: 250.0,
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
                          color: Colors.white,
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Text(
                            SuggestList[index],
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ))
                        ],
                      )),
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
                                    Get.to(Beacon003());
                                    break;
                                  case 1:
                                    Get.to(Beacon001());
                                    break;
                                  case 2:
                                    Get.to(Beacon004());
                                    break;
                                  case 3:
                                    Get.to(Beacon002());
                                    break;
                                  default:
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (_) => VistiScreen()));
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
                                  Text('4.5')
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
        child: CommonImageView(
          svgPath: ImageConstant.imgScan,
        ),
      ),
    );
  }
}
