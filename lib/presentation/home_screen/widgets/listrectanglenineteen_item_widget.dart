import '../controller/home_controller.dart';
import '../models/listrectanglenineteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:museum_smart/core/app_export.dart';
import 'package:museum_smart/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListrectanglenineteenItemWidget extends StatelessWidget {
  ListrectanglenineteenItemWidget(this.listrectanglenineteenItemModelObj);

  ListrectanglenineteenItemModel listrectanglenineteenItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: getMargin(
          top: 5.0000075,
          right: 1,
          bottom: 5.0000075,
        ),
        decoration: AppDecoration.gradientWhiteA700WhiteA70000.copyWith(
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
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            2.00,
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgRectangle19,
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
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            10.00,
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgRectangle25,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      right: 10,
                    ),
                    child: Text(
                      "lbl_royal_albert".tr,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 4,
                            bottom: 12,
                          ),
                          child: Text(
                            "lbl_134_162_bc".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtLatoRegular14,
                          ),
                        ),
                        ElevatedButton(
                          child: CommonImageView(
                            svgPath: ImageConstant.imgArrowright,
                          ),
                          onPressed: () {
                            // Get.toNamed('/second');
                            Get.toNamed(AppRoutes.scanScreen);
                            print("Next to Scanpage");
                          },
                        ),
                        // CustomIconButton(
                        //   height: 32,
                        //   width: 32,
                        //   child: CommonImageView(
                        //     svgPath: ImageConstant.imgArrowright,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
