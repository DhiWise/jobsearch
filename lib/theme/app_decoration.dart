import 'package:flutter/material.dart';
import 'package:e_commerce_app/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillDeeppurple400 => BoxDecoration(
        color: ColorConstant.deepPurple400,
      );
  static BoxDecoration get txtFillGray900 => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get txtFillWhiteA7001e => BoxDecoration(
        color: ColorConstant.whiteA7001e,
      );
  static BoxDecoration get fillWhiteA70001 => BoxDecoration(
        color: ColorConstant.whiteA70001,
      );
  static BoxDecoration get outlineGray900 => BoxDecoration(
        color: ColorConstant.whiteA70001,
        border: Border.all(
          color: ColorConstant.gray900,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillWhiteA70003 => BoxDecoration(
        color: ColorConstant.whiteA70003,
      );
  static BoxDecoration get fillWhiteA70002 => BoxDecoration(
        color: ColorConstant.whiteA70002,
      );
  static BoxDecoration get fillWhiteA701 => BoxDecoration(
        color: ColorConstant.whiteA701,
      );
  static BoxDecoration get outlineIndigo50 => BoxDecoration(
        color: ColorConstant.whiteA70001,
        border: Border.all(
          color: ColorConstant.indigo50,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outlineGray70014 => BoxDecoration(
        color: ColorConstant.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray70014,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigo501 => BoxDecoration(
        color: ColorConstant.gray50,
        border: Border.all(
          color: ColorConstant.indigo50,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outlineIndigo502 => BoxDecoration(
        color: ColorConstant.whiteA70001,
      );
  static BoxDecoration get txtOutlineBluegray50 => BoxDecoration(
        color: ColorConstant.whiteA70001,
        border: Border.all(
          color: ColorConstant.blueGray50,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get txtFillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get gradientGray50Gray5000 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0.68,
          ),
          end: Alignment(
            0.5,
            -0.17,
          ),
          colors: [
            ColorConstant.gray50,
            ColorConstant.gray5000,
          ],
        ),
      );
  static BoxDecoration get fillGray20001 => BoxDecoration(
        color: ColorConstant.gray20001,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get outlineBluegray50 => BoxDecoration(
        color: ColorConstant.whiteA70001,
        border: Border.all(
          color: ColorConstant.blueGray50,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius roundedBorder39 = BorderRadius.circular(
    getHorizontalSize(
      39,
    ),
  );

  static BorderRadius customBorderTL241 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        24,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        24,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        24,
      ),
    ),
  );

  static BorderRadius customBorderTL24 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        24,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        24,
      ),
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );

  static BorderRadius roundedBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24,
    ),
  );

  static BorderRadius roundedBorder44 = BorderRadius.circular(
    getHorizontalSize(
      44,
    ),
  );

  static BorderRadius txtCircleBorder22 = BorderRadius.circular(
    getHorizontalSize(
      22,
    ),
  );

  static BorderRadius circleBorder28 = BorderRadius.circular(
    getHorizontalSize(
      28,
    ),
  );

  static BorderRadius txtCircleBorder14 = BorderRadius.circular(
    getHorizontalSize(
      14,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
