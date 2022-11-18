import '../home_screen/widgets/listrectanglenineteen_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/listrectanglenineteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:virtuevuapp2/core/app_export.dart';
import 'package:virtuevuapp2/widgets/app_bar/custom_app_bar.dart';
import 'package:virtuevuapp2/widgets/custom_button.dart';
import 'package:virtuevuapp2/widgets/custom_drop_down.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                        child: CommonImageView(
                            svgPath: ImageConstant.imgArrowdown)),
                    hintText: "lbl_seattle_usa".tr,
                    margin: getMargin(left: 67),
                    items: controller.homeModelObj.value.dropdownItemList,
                    prefix: Container(
                        margin:
                            getMargin(left: 15, top: 10, right: 5, bottom: 10),
                        child: CommonImageView(
                            svgPath: ImageConstant.imgLocation)),
                    prefixConstraints: BoxConstraints(
                        minWidth: getSize(24.00), minHeight: getSize(24.00)),
                    onChanged: (value) {
                      controller.onSelected(value);
                    }),
                actions: [
                  Padding(
                      padding: getPadding(left: 15, right: 24),
                      child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(23.00)),
                          child: CommonImageView(
                              imagePath: ImageConstant.imgRectangle2,
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
                              width: getHorizontalSize(244.00),
                              margin: getMargin(left: 24, right: 24),
                              child: Text("msg_welcome_to_ar".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSenExtraBold28)),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: getVerticalSize(48.00),
                                  width: getHorizontalSize(380.00),
                                  margin:
                                      getMargin(left: 24, top: 28, right: 24),
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
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(47.00),
                                                    width: getHorizontalSize(
                                                        380.00),
                                                    decoration: AppDecoration
                                                        .fillBluegray51
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: Stack(children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 14,
                                                                      right: 16,
                                                                      bottom:
                                                                          14),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgSearch,
                                                                  height:
                                                                      getSize(
                                                                          18.00),
                                                                  width: getSize(
                                                                      18.00))))
                                                    ])))),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                                width: getHorizontalSize(70.00),
                                                margin: getMargin(
                                                    left: 20,
                                                    top: 10,
                                                    right: 20),
                                                child: Text(
                                                    "msg_search_sculptur".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style:
                                                        AppStyle.txtSenBold14)))
                                      ]))),
                          Container(
                              height: getVerticalSize(646.00),
                              width: size.width,
                              margin: getMargin(top: 25),
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 23, top: 10, right: 23),
                                            child: Obx(() => ListView.builder(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                itemCount: controller
                                                    .homeModelObj
                                                    .value
                                                    .listrectanglenineteenItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  ListrectanglenineteenItemModel
                                                      model = controller
                                                              .homeModelObj
                                                              .value
                                                              .listrectanglenineteenItemList[
                                                          index];
                                                  return ListrectanglenineteenItemWidget(
                                                      model);
                                                })))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                            margin:
                                                getMargin(top: 10, bottom: 1),
                                            decoration: AppDecoration
                                                .gradientGray10000Gray100,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  51.00),
                                                          margin: getMargin(
                                                              left: 24,
                                                              top: 124,
                                                              right: 24),
                                                          child: Text(
                                                              "lbl_first_floor"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtSenExtraBold20))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 25,
                                                              top: 132,
                                                              right: 25,
                                                              bottom: 60),
                                                          child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          10.00)),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgInfo,
                                                                  height:
                                                                      getSize(
                                                                          69.00),
                                                                  width: getSize(
                                                                      69.00),
                                                                  fit: BoxFit
                                                                      .cover))))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            height: getVerticalSize(317.00),
                                            width: getHorizontalSize(404.00),
                                            margin:
                                                getMargin(left: 10, bottom: 10),
                                            child: Stack(
                                                alignment: Alignment.bottomLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  285.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  150.00),
                                                          margin: getMargin(
                                                              left: 10,
                                                              top: 10),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                10,
                                                                            top:
                                                                                10,
                                                                            bottom:
                                                                                1),
                                                                        child: ClipRRect(
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                                17.00)),
                                                                            child: CommonImageView(
                                                                                imagePath: ImageConstant.imgImage5,
                                                                                height: getVerticalSize(211.00),
                                                                                width: getHorizontalSize(129.00),
                                                                                fit: BoxFit.cover)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(
                                                                                10.00)),
                                                                        child: CommonImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgImage5285X150,
                                                                            height: getVerticalSize(285.00),
                                                                            width: getHorizontalSize(150.00),
                                                                            fit: BoxFit.cover)))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 10),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                    height: getVerticalSize(
                                                                        285.00),
                                                                    width: getHorizontalSize(
                                                                        234.00),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        children: [
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Padding(padding: getPadding(left: 21, top: 41, right: 21, bottom: 41), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(17.00)), child: CommonImageView(imagePath: ImageConstant.imgImage7, height: getVerticalSize(192.00), width: getHorizontalSize(167.00), fit: BoxFit.cover)))),
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Container(
                                                                                  height: getVerticalSize(285.00),
                                                                                  width: getHorizontalSize(234.00),
                                                                                  child: Stack(alignment: Alignment.bottomCenter, children: [
                                                                                    Align(alignment: Alignment.centerLeft, child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(10.00)), child: CommonImageView(imagePath: ImageConstant.imgImage7, height: getVerticalSize(285.00), width: getHorizontalSize(234.00), fit: BoxFit.cover))),
                                                                                    Align(
                                                                                        alignment: Alignment.bottomCenter,
                                                                                        child: SingleChildScrollView(
                                                                                            scrollDirection: Axis.horizontal,
                                                                                            padding: getPadding(left: 8, top: 10, right: 8, bottom: 8),
                                                                                            child: Container(
                                                                                                decoration: AppDecoration.gradientWhiteA70070WhiteA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                                                child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                                  Align(
                                                                                                      alignment: Alignment.centerRight,
                                                                                                      child: Padding(
                                                                                                          padding: getPadding(left: 10, top: 8),
                                                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                                            Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                                                              Text("lbl_lincoln_stand".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSenExtraBold16),
                                                                                                              Padding(padding: getPadding(left: 34, top: 1, bottom: 2), child: Text("lbl_189_bc".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoRegular14Gray80099))
                                                                                                            ]),
                                                                                                            Padding(padding: getPadding(left: 186, top: 2, bottom: 1), child: Text("lbl_194_bc".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoRegular14Gray80099))
                                                                                                          ]))),
                                                                                                  Align(
                                                                                                      alignment: Alignment.centerRight,
                                                                                                      child: Padding(
                                                                                                          padding: getPadding(left: 5, top: 10, bottom: 11),
                                                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                                            Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
                                                                                                              Padding(padding: getPadding(top: 1, bottom: 7), child: CommonImageView(svgPath: ImageConstant.imgFrame13, height: getVerticalSize(19.00), width: getHorizontalSize(23.00))),
                                                                                                              Padding(padding: getPadding(left: 6, top: 5, bottom: 6), child: Text("lbl_toward_right".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoRegular14Gray80099)),
                                                                                                              CustomButton(width: 63, text: "lbl_detail".tr, margin: getMargin(left: 30))
                                                                                                            ]),
                                                                                                            CustomButton(width: 63, text: "lbl_detail".tr, margin: getMargin(left: 177))
                                                                                                          ])))
                                                                                                ]))))
                                                                                  ])))
                                                                        ])),
                                                                Container(
                                                                    margin: getMargin(
                                                                        left:
                                                                            27,
                                                                        top:
                                                                            198,
                                                                        bottom:
                                                                            8),
                                                                    decoration: AppDecoration
                                                                        .gradientWhiteA70070WhiteA700
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(left: 11, top: 9, right: 11),
                                                                              child: Text("lbl_rest_pray".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSenExtraBold16)),
                                                                          Padding(
                                                                              padding: getPadding(left: 11, top: 14, right: 11, bottom: 16),
                                                                              child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                CommonImageView(svgPath: ImageConstant.imgLightbulb, height: getSize(20.00), width: getSize(20.00)),
                                                                                Padding(padding: getPadding(left: 6, top: 2, bottom: 2), child: Text("lbl_20_steps_away".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoRegular14Gray80099))
                                                                              ]))
                                                                        ]))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  48.00),
                                                          margin: getMargin(
                                                              right: 10,
                                                              bottom: 10),
                                                          child: Text(
                                                              "lbl_near_by".tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtSenExtraBold20)))
                                                ])))
                                  ]))
                        ])))));
  }
}
