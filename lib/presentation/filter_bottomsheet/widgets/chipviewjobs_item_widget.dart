import '../models/chipviewjobs_item_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChipviewjobsItemWidget extends StatelessWidget {
  ChipviewjobsItemWidget(this.chipviewjobsItemModelObj,
      {this.onSelectedChipView});

  ChipviewjobsItemModel chipviewjobsItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        right: 16,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipviewjobsItemModelObj.jobsoneTxt,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: chipviewjobsItemModelObj.isSelected
              ? ColorConstant.gray900
              : ColorConstant.gray50,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        ),
      ),
      avatar: CustomImageView(
        svgPath: ImageConstant.imgCheckmarkGray50,
        height: getSize(
          18,
        ),
        width: getSize(
          18,
        ),
        margin: getMargin(
          right: 4,
        ),
      ),
      selected: chipviewjobsItemModelObj.isSelected,
      backgroundColor: ColorConstant.deepOrangeA200,
      selectedColor: ColorConstant.whiteA70001,
      shape: chipviewjobsItemModelObj.isSelected
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: ColorConstant.blueGray50,
                width: getHorizontalSize(
                  1,
                ),
              ),
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  22,
                ),
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  22,
                ),
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
