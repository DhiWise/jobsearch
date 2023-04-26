import 'package:e_commerce_app/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingT17:
        return getPadding(
          top: 17,
          right: 17,
          bottom: 17,
        );
      case ButtonPadding.PaddingAll17:
        return getPadding(
          all: 17,
        );
      case ButtonPadding.PaddingAll14:
        return getPadding(
          all: 14,
        );
      case ButtonPadding.PaddingT14:
        return getPadding(
          top: 14,
          right: 14,
          bottom: 14,
        );
      default:
        return getPadding(
          all: 6,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillGray900:
        return ColorConstant.gray900;
      case ButtonVariant.OutlineBluegray50:
        return ColorConstant.whiteA70001;
      case ButtonVariant.FillBluegray5001:
        return ColorConstant.blueGray5001;
      case ButtonVariant.OutlineIndigo50:
        return ColorConstant.whiteA70001;
      case ButtonVariant.FillGreen50:
        return ColorConstant.green50;
      case ButtonVariant.FillRed50:
        return ColorConstant.red50;
      case ButtonVariant.FillRed5001:
        return ColorConstant.red5001;
      case ButtonVariant.OutlineGray900:
        return null;
      default:
        return ColorConstant.gray100;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray900:
        return BorderSide(
          color: ColorConstant.gray900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBluegray50:
        return BorderSide(
          color: ColorConstant.blueGray50,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineIndigo50:
        return BorderSide(
          color: ColorConstant.indigo50,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillGray100:
      case ButtonVariant.FillGray900:
      case ButtonVariant.FillBluegray5001:
      case ButtonVariant.FillGreen50:
      case ButtonVariant.FillRed50:
      case ButtonVariant.FillRed5001:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder24:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
      case ButtonShape.RoundedBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case ButtonShape.CustomBorderTL24:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              24.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              24.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              24.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
        );
      case ButtonShape.RoundedBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      case ButtonShape.RoundedBorder4:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.PlusJakartaSansSemiBold16:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.31,
          ),
        );
      case ButtonFontStyle.PlusJakartaSansSemiBold16Gray50:
        return TextStyle(
          color: ColorConstant.gray50,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.31,
          ),
        );
      case ButtonFontStyle.PlusJakartaSansSemiBold14:
        return TextStyle(
          color: ColorConstant.gray50,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.29,
          ),
        );
      case ButtonFontStyle.PlusJakartaSansSemiBold12:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.33,
          ),
        );
      case ButtonFontStyle.InterRegular12:
        return TextStyle(
          color: ColorConstant.blueGray400,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.PlusJakartaSansMedium14:
        return TextStyle(
          color: ColorConstant.gray50,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.29,
          ),
        );
      case ButtonFontStyle.PlusJakartaSansSemiBold16Bluegray300:
        return TextStyle(
          color: ColorConstant.blueGray300,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.31,
          ),
        );
      case ButtonFontStyle.PlusJakartaSansSemiBold12WhiteA70001:
        return TextStyle(
          color: ColorConstant.whiteA70001,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.33,
          ),
        );
      case ButtonFontStyle.PlusJakartaSansSemiBold12Gray600:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.33,
          ),
        );
      case ButtonFontStyle.PlusJakartaSansSemiBold12Gray50:
        return TextStyle(
          color: ColorConstant.gray50,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.33,
          ),
        );
      case ButtonFontStyle.InterRegular12GreenA700:
        return TextStyle(
          color: ColorConstant.greenA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.InterRegular12Deeporange400:
        return TextStyle(
          color: ColorConstant.deepOrange400,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.InterRegular12RedA200:
        return TextStyle(
          color: ColorConstant.redA200,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.PlusJakartaSansSemiBold14Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.29,
          ),
        );
      case ButtonFontStyle.PlusJakartaSansBold18:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.28,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.blueGray400,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.33,
          ),
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder8,
  RoundedBorder24,
  RoundedBorder20,
  CustomBorderTL24,
  RoundedBorder12,
  RoundedBorder4,
}

enum ButtonPadding {
  PaddingAll6,
  PaddingT17,
  PaddingAll17,
  PaddingAll14,
  PaddingT14,
}

enum ButtonVariant {
  FillGray100,
  OutlineGray900,
  FillGray900,
  OutlineBluegray50,
  FillBluegray5001,
  OutlineIndigo50,
  FillGreen50,
  FillRed50,
  FillRed5001,
}

enum ButtonFontStyle {
  PlusJakartaSansMedium12,
  PlusJakartaSansSemiBold16,
  PlusJakartaSansSemiBold16Gray50,
  PlusJakartaSansSemiBold14,
  PlusJakartaSansSemiBold12,
  InterRegular12,
  PlusJakartaSansMedium14,
  PlusJakartaSansSemiBold16Bluegray300,
  PlusJakartaSansSemiBold12WhiteA70001,
  PlusJakartaSansSemiBold12Gray600,
  PlusJakartaSansSemiBold12Gray50,
  InterRegular12GreenA700,
  InterRegular12Deeporange400,
  InterRegular12RedA200,
  PlusJakartaSansSemiBold14Gray900,
  PlusJakartaSansBold18,
}
