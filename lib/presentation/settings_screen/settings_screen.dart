import 'bloc/settings_bloc.dart';
import 'models/settings_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/presentation/logout_popup_dialog/logout_popup_dialog.dart';

// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsBloc>(
        create: (context) =>
            SettingsBloc(SettingsState(settingsModelObj: SettingsModel()))
              ..add(SettingsInitialEvent()),
        child: SettingsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
        backgroundColor: ColorConstant.whiteA70002,
        appBar: CustomAppBar(
            height: getVerticalSize(51),
            leadingWidth: 48,
            leading: AppbarImage(
              height: getSize(24),
              width: getSize(24),
              svgPath: ImageConstant.imgGroup162799,
              margin: getMargin(left: 24, top: 13, bottom: 14),
              onTap: () {
                onBackPressed(context);
              },
            ),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_settings".tr)),
        body: SizedBox(
            width: size.width,
            child: SingleChildScrollView(
                padding: getPadding(top: 28),
                child: Padding(
                    padding: getPadding(left: 24, right: 24, bottom: 5),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: getPadding(top: 13, bottom: 13),
                              decoration: AppDecoration.fillGray900.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        height: getSize(64),
                                        width: getSize(64),
                                        margin: getMargin(top: 3, bottom: 2),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: getSize(64),
                                                      width: getSize(64),
                                                      child: CircularProgressIndicator(
                                                          value: 0.5,
                                                          strokeWidth:
                                                              getHorizontalSize(
                                                                  4)))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Text("lbl_65".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPlusJakartaSansBold16Gray50
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.08))))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 6),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                  "msg_profile_completeness".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtInterBold16
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.08))),
                                              Container(
                                                  width: getHorizontalSize(199),
                                                  margin: getMargin(top: 6),
                                                  child: Text(
                                                      "msg_quality_profiles".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5))))
                                            ]))
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 32),
                                  child: Text("lbl_account".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansSemiBold12Bluegray400
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.06))))),
                          GestureDetector(
                              onTap: () {
                                onTapAccount(context);
                              },
                              child: Padding(
                                  padding: getPadding(top: 15),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgPerson,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(top: 3)),
                                        Padding(
                                            padding:
                                                getPadding(left: 12, top: 5),
                                            child: Text("lbl_personal_info".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansSemiBold16Gray900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.08)))),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray900,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(bottom: 3))
                                      ]))),
                          Padding(
                              padding: getPadding(top: 16),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.indigo50,
                                  indent: getHorizontalSize(36))),
                          GestureDetector(
                              onTap: () {
                                onTapPrivacy(context);
                              },
                              child: Padding(
                                  padding: getPadding(top: 15),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgThumbsupGray900,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin:
                                                getMargin(top: 3, bottom: 1)),
                                        Padding(
                                            padding:
                                                getPadding(left: 12, top: 7),
                                            child: Text("lbl_experience".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansSemiBold16Gray900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.08)))),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray900,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(bottom: 4))
                                      ]))),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.indigo50,
                                  indent: getHorizontalSize(36))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 26),
                                  child: Text("lbl_general".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansSemiBold12Bluegray400
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.06))))),
                          GestureDetector(
                              onTap: () {
                                onTapNotification(context);
                              },
                              child: Padding(
                                  padding: getPadding(top: 15),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgBell,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(top: 2)),
                                        Padding(
                                            padding:
                                                getPadding(left: 12, top: 2),
                                            child: Text("lbl_notification".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium16
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.12)))),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray900,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(bottom: 2))
                                      ]))),
                          Padding(
                              padding: getPadding(top: 16),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.indigo50,
                                  indent: getHorizontalSize(36))),
                          GestureDetector(
                              onTap: () {
                                onTapLanguage(context);
                              },
                              child: Padding(
                                  padding: getPadding(top: 15),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgGlobe,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin:
                                                getMargin(top: 2, bottom: 1)),
                                        Padding(
                                            padding:
                                                getPadding(left: 12, top: 7),
                                            child: Text("lbl_language".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansSemiBold16Gray900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.08)))),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray900,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(bottom: 4))
                                      ]))),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.indigo50,
                                  indent: getHorizontalSize(36))),
                          Padding(
                              padding: getPadding(top: 15),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgShielddone,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(bottom: 1)),
                                    Padding(
                                        padding: getPadding(left: 12, top: 4),
                                        child: Text("lbl_security".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlusJakartaSansSemiBold16Gray900
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.08)))),
                                    Spacer(),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowrightGray900,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(bottom: 1))
                                  ])),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.indigo50,
                                  indent: getHorizontalSize(36))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 26),
                                  child: Text("lbl_about".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansSemiBold12Bluegray400
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.06))))),
                          GestureDetector(
                              onTap: () {
                                onTapLegalandpolicie(context);
                              },
                              child: Padding(
                                  padding: getPadding(top: 16),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgShield,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(bottom: 1)),
                                        Padding(
                                            padding:
                                                getPadding(left: 12, top: 4),
                                            child: Text(
                                                "msg_legal_and_policies".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansSemiBold16Gray900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.08)))),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray900,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(bottom: 1))
                                      ]))),
                          Padding(
                              padding: getPadding(top: 15),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.indigo50,
                                  indent: getHorizontalSize(36))),
                          Padding(
                              padding: getPadding(top: 16),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgQuestion,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(bottom: 1)),
                                    Padding(
                                        padding: getPadding(left: 12, top: 4),
                                        child: Text("lbl_help_feedback".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlusJakartaSansSemiBold16Gray900
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.08)))),
                                    Spacer(),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowrightGray900,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(bottom: 1))
                                  ])),
                          Padding(
                              padding: getPadding(top: 17),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.indigo50,
                                  indent: getHorizontalSize(36))),
                          Padding(
                              padding: getPadding(top: 16),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgAlert,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    Padding(
                                        padding: getPadding(left: 12, top: 2),
                                        child: Text("lbl_about_us".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlusJakartaSansSemiBold16Gray900
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.08)))),
                                    Spacer(),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowrightGray900,
                                        height: getSize(24),
                                        width: getSize(24))
                                  ])),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtLargelabelmediu(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 28),
                                      child: Text("lbl_logout".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPlusJakartaSansSemiBold16RedA200
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.08))))))
                        ])))),
      ));
    });
  }

  onTapAccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.personalInfoScreen,
    );
  }

  onTapPrivacy(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.experienceSettingScreen,
    );
  }

  onTapNotification(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationsScreen,
    );
  }

  onTapLanguage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.languageScreen,
    );
  }

  onTapLegalandpolicie(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.privacyScreen,
    );
  }

  onTapTxtLargelabelmediu(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: LogoutPopupDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }

  onBackPressed(BuildContext context) {
    NavigatorService.goBack();
  }
}
