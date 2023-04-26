import '../models/listdescription1_item_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listdescription1ItemWidget extends StatelessWidget {
  Listdescription1ItemWidget(this.listdescription1ItemModelObj);

  Listdescription1ItemModel listdescription1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        width: getHorizontalSize(
          101,
        ),
        margin: getMargin(
          right: 12,
        ),
        padding: getPadding(
          left: 16,
          top: 12,
          right: 16,
          bottom: 12,
        ),
        decoration: AppDecoration.txtFillGray100.copyWith(
          borderRadius: BorderRadiusStyle.txtCircleBorder22,
        ),
        child: Text(
          listdescription1ItemModelObj.descriptionTxt,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtPlusJakartaSansSemiBold12Gray900.copyWith(
            letterSpacing: getHorizontalSize(
              0.06,
            ),
          ),
        ),
      ),
    );
  }
}
