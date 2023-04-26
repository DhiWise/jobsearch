import '../models/listbag_item_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:e_commerce_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListbagItemWidget extends StatelessWidget {
  ListbagItemWidget(this.listbagItemModelObj);

  ListbagItemModel listbagItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 16,
          ),
          padding: getPadding(
            all: 16,
          ),
          decoration: AppDecoration.fillGray900.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 48,
                width: 48,
                margin: getMargin(
                  bottom: 96,
                ),
                variant: IconButtonVariant.FillWhiteA70001,
                child: CustomImageView(
                  svgPath: ImageConstant.imgBag,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 4,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "msg_senior_ui_ux_designer".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPlusJakartaSansBold14Gray50.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.07,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 7,
                      ),
                      child: Text(
                        "lbl_shopee".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPlusJakartaSansSemiBold12.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.06,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 11,
                      ),
                      child: Text(
                        "msg_jakarta_indonesia".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPlusJakartaSansMedium12Gray5094
                            .copyWith(
                          letterSpacing: getHorizontalSize(
                            0.06,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 9,
                      ),
                      child: Text(
                        "msg_1100_12_000_month".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtPlusJakartaSansMedium12Gray50.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.06,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 17,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: getHorizontalSize(
                              70,
                            ),
                            padding: getPadding(
                              left: 12,
                              top: 5,
                              right: 12,
                              bottom: 5,
                            ),
                            decoration:
                                AppDecoration.txtFillWhiteA7001e.copyWith(
                              borderRadius: BorderRadiusStyle.txtCircleBorder14,
                            ),
                            child: Text(
                              "lbl_fulltime".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansMedium12Gray50a2
                                  .copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.06,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              103,
                            ),
                            margin: getMargin(
                              left: 7,
                            ),
                            padding: getPadding(
                              left: 12,
                              top: 4,
                              right: 12,
                              bottom: 4,
                            ),
                            decoration:
                                AppDecoration.txtFillWhiteA7001e.copyWith(
                              borderRadius: BorderRadiusStyle.txtCircleBorder14,
                            ),
                            child: Text(
                              "lbl_two_days_ago".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansMedium12Gray50a2
                                  .copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.06,
                                ),
                              ),
                            ),
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
      ),
    );
  }
}
