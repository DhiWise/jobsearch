import 'bloc/logout_popup_bloc.dart';
import 'models/logout_popup_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:e_commerce_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LogoutPopupDialog extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<LogoutPopupBloc>(
        create: (context) => LogoutPopupBloc(
            LogoutPopupState(logoutPopupModelObj: LogoutPopupModel()))
          ..add(LogoutPopupInitialEvent()),
        child: LogoutPopupDialog());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: getMargin(left: 35, right: 34),
        padding: getPadding(all: 32),
        decoration: AppDecoration.fillWhiteA70001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomImageView(
                  svgPath: ImageConstant.imgProfile,
                  height: getSize(82),
                  width: getSize(82),
                  margin: getMargin(top: 9)),
              Padding(
                  padding: getPadding(top: 35),
                  child: Text("lbl_are_you_sure".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPlusJakartaSansBold18.copyWith(
                          letterSpacing: getHorizontalSize(0.09)))),
              Container(
                  width: getHorizontalSize(229),
                  margin: getMargin(left: 6, top: 8, right: 5),
                  child: Text("msg_ullamcorper_imperdiet".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtPlusJakartaSansSemiBold14.copyWith(
                          letterSpacing: getHorizontalSize(0.07)))),
              Container(
                width: size.width,
                child: Padding(
                    padding: getPadding(top: 25),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: CustomButton(
                                  height: getVerticalSize(46),
                                  text: "lbl_log_out2".tr,
                                  margin: getMargin(right: 6),
                                  variant: ButtonVariant.OutlineGray900,
                                  shape: ButtonShape.RoundedBorder20,
                                  padding: ButtonPadding.PaddingAll14,
                                  fontStyle: ButtonFontStyle
                                      .PlusJakartaSansSemiBold14Gray900,
                                  onTap: () {
                                    onTapLogout(context);
                                  })),
                          Expanded(
                              child: CustomButton(
                                  height: getVerticalSize(46),
                                  text: "lbl_cancel".tr,
                                  margin: getMargin(left: 6),
                                  variant: ButtonVariant.FillGray900,
                                  shape: ButtonShape.RoundedBorder20,
                                  padding: ButtonPadding.PaddingAll14,
                                  fontStyle: ButtonFontStyle
                                      .PlusJakartaSansSemiBold14,
                                  onTap: () {
                                    onBackPressed(context);
                                  }))
                        ])),
              )
            ]));
  }

  onTapLogout(BuildContext context) {
    NavigatorService.pushNamedAndRemoveUntil(
      AppRoutes.loginScreen,
    );
  }

  onBackPressed(BuildContext context) {
    NavigatorService.goBack();
  }
}
