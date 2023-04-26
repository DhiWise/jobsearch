import '../models/listbag1_item_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:e_commerce_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listbag1ItemWidget extends StatelessWidget {
  Listbag1ItemWidget(this.listbag1ItemModelObj);

  Listbag1ItemModel listbag1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomIconButton(
          height: 32,
          width: 32,
          margin: getMargin(
            bottom: 62,
          ),
          shape: IconButtonShape.CircleBorder16,
          padding: IconButtonPadding.PaddingAll4,
          child: CustomImageView(
            svgPath: ImageConstant.imgBag,
          ),
        ),
        Container(
          height: getVerticalSize(
            90,
          ),
          width: getHorizontalSize(
            283,
          ),
          margin: getMargin(
            top: 4,
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "lbl_32_min_ago".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style:
                      AppStyle.txtPlusJakartaSansMedium12Bluegray300.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.06,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      listbag1ItemModelObj.jobtitleTxt,
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
                        top: 7,
                      ),
                      child: Text(
                        listbag1ItemModelObj.companynameTxt,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPlusJakartaSansMedium12Bluegray400
                            .copyWith(
                          letterSpacing: getHorizontalSize(
                            0.06,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        233,
                      ),
                      margin: getMargin(
                        top: 10,
                      ),
                      child: Text(
                        "msg_lorem_ipsum_dolor7".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtPlusJakartaSansMedium12Gray900.copyWith(
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
    );
  }
}
