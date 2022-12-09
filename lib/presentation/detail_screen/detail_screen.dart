import 'controller/detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:museum_smart/core/app_export.dart';
import 'package:museum_smart/widgets/custom_floating_button.dart';
import 'package:museum_smart/widgets/custom_icon_button.dart';

class DetailScreen extends GetWidget<DetailController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray400,
            body: Container(
                height: size.height,
                width: size.width,
                child: Stack(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: SingleChildScrollView(
                          child: Container(
                              height: size.height,
                              width: size.width,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                            height: getVerticalSize(805.00),
                                            width: size.width,
                                            margin: getMargin(bottom: 10),
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: CommonImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgImage9,
                                                          height:
                                                              getVerticalSize(
                                                                  805.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  428.00))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              bottom: 10),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Container(
                                                                        width: double.infinity,
                                                                        decoration: AppDecoration.gradientBlack90090Black900911,
                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                          CustomIconButton(
                                                                              height: 40,
                                                                              width: 40,
                                                                              margin: getMargin(left: 24, top: 40, right: 24, bottom: 127),
                                                                              variant: IconButtonVariant.FillWhiteA7003d,
                                                                              alignment: Alignment.centerLeft,
                                                                              onTap: () {
                                                                                onTapBtntf();
                                                                              },
                                                                              child: CommonImageView(svgPath: ImageConstant.imgArrowleft))
                                                                        ]))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            79,
                                                                        top:
                                                                            158,
                                                                        right:
                                                                            79),
                                                                    child: CommonImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgArrow,
                                                                        height: getVerticalSize(
                                                                            72.00),
                                                                        width: getHorizontalSize(
                                                                            270.00)))
                                                              ])))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            margin: getMargin(
                                                left: 24, top: 10, right: 24),
                                            decoration: AppDecoration
                                                .gradientWhiteA70070WhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 17,
                                                          top: 34,
                                                          right: 17),
                                                      child: Text(
                                                          "lbl_dioskouroi".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSenExtraBold24Gray800)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 8,
                                                          right: 16),
                                                      child: Text(
                                                          "msg_year_211_170".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtLatoBold14)),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  344.00),
                                                          margin: getMargin(
                                                              left: 16,
                                                              top: 17,
                                                              right: 16,
                                                              bottom: 4),
                                                          child: Text(
                                                              "msg_the_mythical_tw"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtLatoRegular14Gray80099
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.56))))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 203,
                                                top: 198,
                                                right: 203,
                                                bottom: 198),
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowup,
                                                height: getVerticalSize(26.00),
                                                width:
                                                    getHorizontalSize(21.00)))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                            height: getVerticalSize(432.00),
                                            width: size.width,
                                            margin: getMargin(top: 10),
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    begin: Alignment(
                                                        0.5013333431546309,
                                                        0.628930797926758),
                                                    end: Alignment(
                                                        0.5013333268380594,
                                                        1.0314465211971973),
                                                    colors: [
                                                  ColorConstant.gray10000,
                                                  ColorConstant.gray100
                                                ]))))
                                  ]))))
                ])),
            floatingActionButton: CustomFloatingButton(
                height: 48,
                width: 48,
                child: CommonImageView(
                    svgPath: ImageConstant.imgMusic,
                    height: getVerticalSize(24.00),
                    width: getHorizontalSize(24.00)))));
  }

  onTapBtntf() {
    Get.back();
  }
}
