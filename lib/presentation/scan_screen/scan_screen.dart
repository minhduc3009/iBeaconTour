import 'controller/scan_controller.dart';
import 'package:flutter/material.dart';
import 'package:iBeaconTour/core/app_export.dart';
import 'package:iBeaconTour/widgets/app_bar/custom_app_bar.dart';
import 'package:iBeaconTour/widgets/custom_button.dart';
import 'package:iBeaconTour/widgets/custom_icon_button.dart';

class ScanScreen extends GetWidget<ScanController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: size.height,
                width: size.width,
                child: Stack(alignment: Alignment.centerLeft, children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: CommonImageView(
                          imagePath: ImageConstant.imgImage,
                          height: getVerticalSize(926.00),
                          width: getHorizontalSize(428.00))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                width: double.infinity,
                                decoration:
                                    AppDecoration.gradientBlack90090Black90091,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomAppBar(
                                          height: getVerticalSize(56.00),
                                          leadingWidth: 64,
                                          leading: CustomIconButton(
                                              height: 40,
                                              width: 40,
                                              margin: getMargin(left: 24),
                                              variant: IconButtonVariant
                                                  .FillWhiteA7003d,
                                              onTap: () {
                                                onTapBtntf();
                                              },
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleft)),
                                          centerTitle: true,
                                          title: Text("lbl_scanning".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtSenExtraBold24),
                                          actions: [
                                            Container(
                                                margin: getMargin(
                                                    left: 24,
                                                    top: 5,
                                                    right: 24,
                                                    bottom: 5),
                                                decoration: AppDecoration
                                                    .outlineWhiteA7001e
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder17),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgEllipse10,
                                                              height: getSize(
                                                                  30.00),
                                                              width: getSize(
                                                                  30.00)))
                                                    ]))
                                          ])
                                    ])),
                            Expanded(
                                child: SingleChildScrollView(
                                    padding: getPadding(bottom: 10),
                                    child: Container(
                                        height: size.height,
                                        width: size.width,
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          174.00),
                                                      width: size.width,
                                                      margin: getMargin(
                                                          bottom: 10))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 10, right: 1),
                                                      child: CommonImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgOverlay,
                                                          height:
                                                              getVerticalSize(
                                                                  408.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  427.00)))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 53,
                                                          top: 311,
                                                          right: 53,
                                                          bottom: 311),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgDots,
                                                          height:
                                                              getVerticalSize(
                                                                  271.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  172.00)))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Container(
                                                      width: getHorizontalSize(
                                                          303.00),
                                                      margin: getMargin(
                                                          left: 29,
                                                          top: 143,
                                                          right: 29,
                                                          bottom: 143),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            18,
                                                                        right:
                                                                            18),
                                                                    child: CommonImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgDotsWhiteA700,
                                                                        height: getVerticalSize(
                                                                            83.00),
                                                                        width: getHorizontalSize(
                                                                            53.00)))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child:
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            126.00),
                                                                        width: getHorizontalSize(
                                                                            303.00),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.topRight,
                                                                            children: [
                                                                              Align(
                                                                                  alignment: Alignment.center,
                                                                                  child: Container(
                                                                                      margin: getMargin(right: 2),
                                                                                      decoration: AppDecoration.gradientWhiteA70070WhiteA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                                      child: Row(crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.max, children: [
                                                                                        Container(
                                                                                            height: getVerticalSize(101.00),
                                                                                            width: getHorizontalSize(113.00),
                                                                                            margin: getMargin(left: 12, top: 12, bottom: 12),
                                                                                            child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                              Align(alignment: Alignment.centerLeft, child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(8.00)), child: CommonImageView(imagePath: ImageConstant.imgRectangle19101X113, height: getVerticalSize(101.00), width: getHorizontalSize(113.00), fit: BoxFit.cover))),
                                                                                              Align(alignment: Alignment.centerLeft, child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(10.00)), child: CommonImageView(imagePath: ImageConstant.imgBackground, height: getVerticalSize(101.00), width: getHorizontalSize(113.00), fit: BoxFit.cover)))
                                                                                            ])),
                                                                                        Padding(
                                                                                            padding: getPadding(left: 14, top: 49, right: 77, bottom: 12),
                                                                                            child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                              Padding(padding: getPadding(right: 10), child: Text("lbl_110_bc".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold18)),
                                                                                              CustomButton(width: 84, text: "lbl_detail".tr, margin: getMargin(top: 16))
                                                                                            ]))
                                                                                      ]))),
                                                                              Align(alignment: Alignment.topRight, child: Padding(padding: getPadding(left: 10, top: 13, bottom: 13), child: Text("lbl_the_white_lie".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSenExtraBold24Gray800)))
                                                                            ])))
                                                          ])))
                                            ]))))
                          ]))
                ]))));
  }

  onTapBtntf() {
    Get.back();
  }
}
