import '../experience_setting_screen/widgets/experience_item_widget.dart';
import 'bloc/experience_setting_bloc.dart';
import 'models/experience_item_model.dart';
import 'models/experience_setting_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:e_commerce_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ExperienceSettingScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ExperienceSettingBloc>(
        create: (context) => ExperienceSettingBloc(ExperienceSettingState(
            experienceSettingModelObj: ExperienceSettingModel()))
          ..add(ExperienceSettingInitialEvent()),
        child: ExperienceSettingScreen());
  }

  @override
  Widget build(BuildContext context) {
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
                    margin: getMargin(left: 24, top: 13, bottom: 14),onTap: (){
                      onBackPressed(context);
                },),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_experience".tr)),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 28),
                    child: Padding(
                        padding: getPadding(left: 24, right: 24, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      padding: getPadding(all: 16),
                                      decoration: AppDecoration.outlineIndigo50
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder12),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomButton(
                                                text: "lbl_experience".tr,
                                                margin: getMargin(top: 1),
                                                shape: ButtonShape.Square,
                                                fontStyle: ButtonFontStyle
                                                    .PlusJakartaSansBold18,
                                                suffixWidget: Container(
                                                    margin: getMargin(left: 30),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgEditsquareGray900)),
                                                onTap: () {
                                                  onTapExperienceone(context);
                                                }),
                                            Padding(
                                                padding: getPadding(
                                                    top: 15, right: 60),
                                                child: BlocSelector<
                                                        ExperienceSettingBloc,
                                                        ExperienceSettingState,
                                                        ExperienceSettingModel?>(
                                                    selector: (state) => state
                                                        .experienceSettingModelObj,
                                                    builder: (context,
                                                        experienceSettingModelObj) {
                                                      return ListView.separated(
                                                          physics:
                                                              NeverScrollableScrollPhysics(),
                                                          shrinkWrap: true,
                                                          separatorBuilder:
                                                              (context, index) {
                                                            return Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            19.5,
                                                                        bottom:
                                                                            19.5),
                                                                child: SizedBox(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            295),
                                                                    child: Divider(
                                                                        height:
                                                                            getVerticalSize(
                                                                                1),
                                                                        thickness:
                                                                            getVerticalSize(
                                                                                1),
                                                                        color: ColorConstant
                                                                            .indigo50)));
                                                          },
                                                          itemCount:
                                                              experienceSettingModelObj
                                                                      ?.experienceItemList
                                                                      .length ??
                                                                  0,
                                                          itemBuilder:
                                                              (context, index) {
                                                            ExperienceItemModel
                                                                model =
                                                                experienceSettingModelObj
                                                                            ?.experienceItemList[
                                                                        index] ??
                                                                    ExperienceItemModel();
                                                            return ExperienceItemWidget(
                                                                model);
                                                          });
                                                    }))
                                          ]))),
                              CustomButton(
                                  height: getVerticalSize(56),
                                  text: "msg_add_new_position".tr,
                                  margin: getMargin(top: 37),
                                  variant: ButtonVariant.FillGray900,
                                  shape: ButtonShape.RoundedBorder24,
                                  padding: ButtonPadding.PaddingAll17,
                                  fontStyle: ButtonFontStyle
                                      .PlusJakartaSansSemiBold16Gray50,
                                  onTap: () {
                                    onTapAddnew(context);
                                  }),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(top: 32),
                                      padding: getPadding(all: 16),
                                      decoration: AppDecoration
                                          .outlineBluegray50
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder12),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 2),
                                                      child: Text(
                                                          "lbl_education".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPlusJakartaSansBold16
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.08)))),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgEditsquareGray900,
                                                      height: getSize(24),
                                                      width: getSize(24))
                                                ]),
                                            Padding(
                                                padding: getPadding(
                                                    top: 24, right: 83),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgGroup162942Gray100,
                                                      height: getSize(48),
                                                      width: getSize(48)),
                                                  Expanded(
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 12,
                                                              top: 5,
                                                              bottom: 1),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "msg_university_of_oxford"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPlusJakartaSansSemiBold14Gray900
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.07))),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                6),
                                                                    child: Row(
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(top: 1),
                                                                              child: Text("msg_computer_science".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPlusJakartaSansMedium12Bluegray400.copyWith(letterSpacing: getHorizontalSize(0.06)))),
                                                                          Padding(
                                                                              padding: getPadding(left: 4, top: 1),
                                                                              child: Text("lbl".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPlusJakartaSansMedium12Bluegray400.copyWith(letterSpacing: getHorizontalSize(0.06)))),
                                                                          Padding(
                                                                              padding: getPadding(left: 4, bottom: 1),
                                                                              child: Text("lbl_2019".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPlusJakartaSansMedium12Bluegray400.copyWith(letterSpacing: getHorizontalSize(0.06))))
                                                                        ]))
                                                              ])))
                                                ]))
                                          ])))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(56),
                text: "msg_add_new_education".tr,
                margin: getMargin(left: 24, right: 24, bottom: 55),
                variant: ButtonVariant.FillGray900,
                shape: ButtonShape.RoundedBorder24,
                padding: ButtonPadding.PaddingAll17,
                fontStyle: ButtonFontStyle.PlusJakartaSansSemiBold16Gray50,
                onTap: () {
                  onTapAddnew1(context);
                })));
  }

  onTapExperienceone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.newPositionScreen,
    );
  }

  onTapAddnew(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.newPositionScreen,
    );
  }

  onTapAddnew1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addNewEducationScreen,
    );
  }

  onBackPressed(BuildContext context) {
    NavigatorService.goBack();
  }
}
