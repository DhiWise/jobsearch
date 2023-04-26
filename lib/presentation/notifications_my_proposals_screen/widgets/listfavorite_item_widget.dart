import '../models/listfavorite_item_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:e_commerce_app/widgets/custom_button.dart';
import 'package:e_commerce_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListfavoriteItemWidget extends StatelessWidget {
  ListfavoriteItemWidget(this.listfavoriteItemModelObj);

  ListfavoriteItemModel listfavoriteItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomIconButton(
          height: 48,
          width: 48,
          margin: getMargin(
            bottom: 42,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgFavorite,
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
                style: AppStyle.txtPlusJakartaSansBold14.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.07,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 6,
                ),
                child: Text(
                  listfavoriteItemModelObj.companyTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style:
                      AppStyle.txtPlusJakartaSansSemiBold12Bluegray300.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.06,
                    ),
                  ),
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  28,
                ),
                width: getHorizontalSize(
                  78,
                ),
                text: "lbl_opened".tr,
                margin: getMargin(
                  top: 17,
                ),
                variant: ButtonVariant.FillGreen50,
                shape: ButtonShape.RoundedBorder4,
                fontStyle: ButtonFontStyle.InterRegular12GreenA700,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
