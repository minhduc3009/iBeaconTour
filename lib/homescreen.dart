import 'package:flutter/material.dart';
import 'package:virtuevuapp2/core/app_export.dart';
import 'package:virtuevuapp2/widgets/app_bar/custom_app_bar.dart';
import 'package:virtuevuapp2/widgets/custom_drop_down.dart';

class HomePageScreen extends StatelessWidget {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Viet Nam",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Hanoi",
    ),
    SelectionPopupModel(
      id: 3,
      title: "HCM",
    ),
    SelectionPopupModel(
      id: 4,
      title: "American",
    ),
    SelectionPopupModel(
      id: 5,
      title: "Korean",
    ),
    SelectionPopupModel(
      id: 6,
      title: "China",
    )
  ].obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          height: getVerticalSize(56.00),
          leadingWidth: 48,
          leading: Padding(
              padding: getPadding(left: 24, top: 11, bottom: 11),
              child: CommonImageView(
                  svgPath: ImageConstant.imgMenu,
                  height: getSize(24.00),
                  width: getSize(24.00))),
          title: CustomDropDown(
            width: 228,
            focusNode: FocusNode(),
            icon: Container(
                margin: getMargin(left: 30, right: 10),
                child: CommonImageView(svgPath: ImageConstant.imgArrowdown)),
            hintText: "Smart Museum in VN".tr,
            margin: getMargin(left: 67),
            items: dropdownItemList,
            prefix: Container(
                margin: getMargin(left: 15, top: 10, right: 5, bottom: 10),
                child: CommonImageView(svgPath: ImageConstant.imgLocation)),
            prefixConstraints: BoxConstraints(
                minWidth: getSize(24.00), minHeight: getSize(24.00)),
          ),
          actions: [
            Padding(
                padding: getPadding(left: 15, right: 24),
                child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(getHorizontalSize(23.00)),
                    child: CommonImageView(
                        imagePath: ImageConstant.imgRectangle19101X113,
                        height: getSize(46.00),
                        width: getSize(46.00),
                        fit: BoxFit.cover)))
          ]),
      body: SingleChildScrollView(
          child: Padding(
              padding: getPadding(top: 29),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: getHorizontalSize(400.00),
                        margin: getMargin(left: 24, right: 24),
                        child: Text("Welcome to Smart Museum".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSenExtraBold28)),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: getVerticalSize(48.00),
                            width: getHorizontalSize(380.00),
                            margin: getMargin(left: 24, top: 28, right: 24),
                            child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: getMargin(bottom: 1),
                                          color: ColorConstant.bluegray51,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                          child: Container(
                                              height: getVerticalSize(47.00),
                                              width: getHorizontalSize(380.00),
                                              decoration: AppDecoration
                                                  .fillBluegray51
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Stack(children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 16,
                                                            top: 14,
                                                            right: 16,
                                                            bottom: 14),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgSearch,
                                                            height:
                                                                getSize(18.00),
                                                            width: getSize(
                                                                18.00))))
                                              ])))),
                                  Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Container(
                                          width: getHorizontalSize(100.00),
                                          margin: getMargin(
                                              left: 15, top: 5, right: 10),
                                          child: Text("Search ...".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRobotoRegular20)))
                                ]))),
                    Container(
                        // __________>>>_______________________________________________BEACON 001____________________________________________
                        height: getVerticalSize(120.00),
                        width: size.width,
                        margin: getMargin(top: 20),
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              margin: getMargin(
                                top: 5.0000075,
                                right: 1,
                                bottom: 5.0000075,
                              ),
                              decoration: AppDecoration
                                  .gradientWhiteA700WhiteA70000
                                  .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder17,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    height: getVerticalSize(
                                      74.00,
                                    ),
                                    width: getHorizontalSize(
                                      66.00,
                                    ),
                                    margin: getMargin(
                                      left: 9,
                                      top: 9,
                                      bottom: 1,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 6,
                                              top: 10,
                                              right: 7,
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  2.00,
                                                ),
                                              ),
                                              child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle19,
                                                height: getSize(
                                                  53.00,
                                                ),
                                                width: getSize(
                                                  53.00,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: getPadding(
                                              bottom: 10,
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  10.00,
                                                ),
                                              ),
                                              child: CommonImageView(
                                                imagePath:
                                                    ImageConstant.iconBeacon,
                                                height: getSize(
                                                  66.00,
                                                ),
                                                width: getSize(
                                                  66.00,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 17,
                                      top: 20,
                                      right: 12,
                                      bottom: 11,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            right: 10,
                                          ),
                                          child: Text(
                                            "Beacon - 001".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtSenExtraBold16,
                                          ),
                                        ),
                                        Container(
                                          width: getHorizontalSize(
                                            276.00,
                                          ),
                                          margin: getMargin(
                                            top: 1,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 4,
                                                  bottom: 12,
                                                ),
                                                child: Text(
                                                  "Address: 001".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtLatoRegular14,
                                                ),
                                              ),
                                              ElevatedButton(
                                                child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowright,
                                                ),
                                                onPressed: () {
                                                  Get.toNamed('/beacon001');
                                                  print(
                                                      "----------> Next to Scanpage");
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ])),
                    Container(
                        // __________>>>_______________________________________________BEACON 002____________________________________________
                        height: getVerticalSize(120.00),
                        width: size.width,
                        margin: getMargin(top: 5),
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              margin: getMargin(
                                top: 5.0000075,
                                right: 1,
                                bottom: 5.0000075,
                              ),
                              decoration: AppDecoration
                                  .gradientWhiteA700WhiteA70000
                                  .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder17,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    height: getVerticalSize(
                                      74.00,
                                    ),
                                    width: getHorizontalSize(
                                      66.00,
                                    ),
                                    margin: getMargin(
                                      left: 9,
                                      top: 9,
                                      bottom: 1,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 6,
                                              top: 10,
                                              right: 7,
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  2.00,
                                                ),
                                              ),
                                              child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle19,
                                                height: getSize(
                                                  53.00,
                                                ),
                                                width: getSize(
                                                  53.00,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: getPadding(
                                              bottom: 10,
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  10.00,
                                                ),
                                              ),
                                              child: CommonImageView(
                                                imagePath:
                                                    ImageConstant.iconBeacon,
                                                height: getSize(
                                                  66.00,
                                                ),
                                                width: getSize(
                                                  66.00,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 17,
                                      top: 20,
                                      right: 12,
                                      bottom: 11,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            right: 10,
                                          ),
                                          child: Text(
                                            "Beacon - 002".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtSenExtraBold16,
                                          ),
                                        ),
                                        Container(
                                          width: getHorizontalSize(
                                            276.00,
                                          ),
                                          margin: getMargin(
                                            top: 1,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 4,
                                                  bottom: 12,
                                                ),
                                                child: Text(
                                                  "Address: 002".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtLatoRegular14,
                                                ),
                                              ),
                                              ElevatedButton(
                                                child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowright,
                                                ),
                                                onPressed: () {
                                                  Get.toNamed('/beacon002');
                                                  print(
                                                      "----------> Next to Scanpage");
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ])),
                    Container(
                        // __________>>>_______________________________________________BEACON 003____________________________________________
                        height: getVerticalSize(120.00),
                        width: size.width,
                        margin: getMargin(top: 20),
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              margin: getMargin(
                                top: 5.0000075,
                                right: 1,
                                bottom: 5.0000075,
                              ),
                              decoration: AppDecoration
                                  .gradientWhiteA700WhiteA70000
                                  .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder17,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    height: getVerticalSize(
                                      74.00,
                                    ),
                                    width: getHorizontalSize(
                                      66.00,
                                    ),
                                    margin: getMargin(
                                      left: 9,
                                      top: 9,
                                      bottom: 1,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 6,
                                              top: 10,
                                              right: 7,
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  2.00,
                                                ),
                                              ),
                                              child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle19,
                                                height: getSize(
                                                  53.00,
                                                ),
                                                width: getSize(
                                                  53.00,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: getPadding(
                                              bottom: 10,
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  10.00,
                                                ),
                                              ),
                                              child: CommonImageView(
                                                imagePath:
                                                    ImageConstant.iconBeacon,
                                                height: getSize(
                                                  66.00,
                                                ),
                                                width: getSize(
                                                  66.00,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 17,
                                      top: 20,
                                      right: 12,
                                      bottom: 11,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            right: 10,
                                          ),
                                          child: Text(
                                            "Beacon - 003".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtSenExtraBold16,
                                          ),
                                        ),
                                        Container(
                                          width: getHorizontalSize(
                                            276.00,
                                          ),
                                          margin: getMargin(
                                            top: 1,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 4,
                                                  bottom: 12,
                                                ),
                                                child: Text(
                                                  "Address: 003".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtLatoRegular14,
                                                ),
                                              ),
                                              ElevatedButton(
                                                child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowright,
                                                ),
                                                onPressed: () {
                                                  Get.toNamed('/beacon003');
                                                  print(
                                                      "----------> Next to Scanpage");
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ])),
                    Container(
                        // __________>>>_______________________________________________BEACON 004____________________________________________
                        height: getVerticalSize(120.00),
                        width: size.width,
                        margin: getMargin(top: 20),
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              margin: getMargin(
                                top: 5.0000075,
                                right: 1,
                                bottom: 5.0000075,
                              ),
                              decoration: AppDecoration
                                  .gradientWhiteA700WhiteA70000
                                  .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder17,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    height: getVerticalSize(
                                      74.00,
                                    ),
                                    width: getHorizontalSize(
                                      66.00,
                                    ),
                                    margin: getMargin(
                                      left: 9,
                                      top: 9,
                                      bottom: 1,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 6,
                                              top: 10,
                                              right: 7,
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  2.00,
                                                ),
                                              ),
                                              child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle19,
                                                height: getSize(
                                                  53.00,
                                                ),
                                                width: getSize(
                                                  53.00,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: getPadding(
                                              bottom: 10,
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  10.00,
                                                ),
                                              ),
                                              child: CommonImageView(
                                                imagePath:
                                                    ImageConstant.iconBeacon,
                                                height: getSize(
                                                  66.00,
                                                ),
                                                width: getSize(
                                                  66.00,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 17,
                                      top: 20,
                                      right: 12,
                                      bottom: 11,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            right: 10,
                                          ),
                                          child: Text(
                                            "Beacon - 004".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtSenExtraBold16,
                                          ),
                                        ),
                                        Container(
                                          width: getHorizontalSize(
                                            276.00,
                                          ),
                                          margin: getMargin(
                                            top: 1,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 4,
                                                  bottom: 12,
                                                ),
                                                child: Text(
                                                  "Address: 004".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtLatoRegular14,
                                                ),
                                              ),
                                              ElevatedButton(
                                                child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowright,
                                                ),
                                                onPressed: () {
                                                  Get.toNamed('/beacon004');
                                                  print(
                                                      "----------> Next to Scanpage");
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ])),
                  ]))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/findDevice');
          print("----------> Button Press to SCAN");
        },
        child: CommonImageView(
          svgPath: ImageConstant.imgScan,
        ),
      ),
    );
  }
}
