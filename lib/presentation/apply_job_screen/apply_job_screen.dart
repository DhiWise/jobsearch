import 'package:e_commerce_app/core/utils/validation_functions.dart';
import 'package:e_commerce_app/presentation/apply_job_popup_dialog/bloc/apply_job_popup_bloc.dart';
import 'package:e_commerce_app/widgets/custom_text_form_field.dart';

import 'bloc/apply_job_bloc.dart';
import 'models/apply_job_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:e_commerce_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/presentation/apply_job_popup_dialog/apply_job_popup_dialog.dart';

class ApplyJobScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ApplyJobBloc>(
        create: (context) =>
            ApplyJobBloc(ApplyJobState(applyJobModelObj: ApplyJobModel()))
              ..add(ApplyJobInitialEvent()),
        child: ApplyJobScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplyJobBloc, ApplyJobState>(builder: (context, state) {
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
                  title: AppbarTitle(text: "lbl_apply_job".tr)),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 24, top: 31, right: 24, bottom: 31),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: double.maxFinite,
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_full_name".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPlusJakartaSansMedium14Gray900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.07))),
                                      BlocSelector<ApplyJobBloc, ApplyJobState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.fullNameController,
                                          builder: (context, fullNameController) {
                                            return CustomTextFormField(
                                              focusNode: FocusNode(),
                                              controller: fullNameController,
                                              hintText:
                                                  "msg_brooklyn_simmons".tr,
                                              margin: getMargin(
                                                  top: 12,
                                                  bottom: 12),
                                              padding: TextFormFieldPadding
                                                  .PaddingT15,
                                              textInputAction:
                                                  TextInputAction.done,
                                              textInputType:
                                                  TextInputType.emailAddress,
                                              validator: (value) {
                                                if (value == null ||
                                                    (!isText(value,
                                                        isRequired: true))) {
                                                  return "Please enter valid text";
                                                }
                                                return null;
                                              },
                                            );
                                          }),
                                    ]))),
                        Container(
                            width: double.maxFinite,
                            child: Container(
                                margin: getMargin(top: 26),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_email_address".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPlusJakartaSansMedium14Gray900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.07))),
                                      BlocSelector<ApplyJobBloc, ApplyJobState,
                                          TextEditingController?>(
                                          selector: (state) =>
                                          state.emailController,
                                          builder: (context, emailController) {
                                            return CustomTextFormField(
                                              focusNode: FocusNode(),
                                              controller: emailController,
                                              hintText:
                                              "lbl_xyz_gmail_com".tr,
                                              margin: getMargin(
                                                  top: 12,
                                                  bottom: 12),
                                              padding: TextFormFieldPadding
                                                  .PaddingT15,
                                              textInputAction:
                                              TextInputAction.done,
                                              textInputType:
                                              TextInputType.emailAddress,
                                              validator: (value) {
                                                if (value == null ||
                                                    (!isValidEmail(value,
                                                        isRequired: true))) {
                                                  return "Please enter valid email address";
                                                }
                                                return null;
                                              },
                                            );
                                          }),
                                    ]))),
                        Padding(
                            padding: getPadding(top: 28),
                            child: Text("lbl_upload_cv".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtPlusJakartaSansMedium14Gray900
                                    .copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.07)))),
                        GestureDetector(
                          onTap: () {
                            requestStoragePermission(context);
                          },
                          child: Container(
                              width: double.maxFinite,
                              child: Padding(
                                  padding: getPadding(top: 7),
                                  child: DottedBorder(
                                      color: ColorConstant.indigo50,
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(1),
                                          top: getVerticalSize(1),
                                          right: getHorizontalSize(1),
                                          bottom: getVerticalSize(1)),
                                      strokeWidth: getHorizontalSize(1),
                                      radius: Radius.circular(24),
                                      borderType: BorderType.RRect,
                                      dashPattern: [6, 6],
                                      child: Container(
                                          padding: getPadding(
                                              left: 125,
                                              top: 39,
                                              right: 125,
                                              bottom: 39),
                                          decoration: AppDecoration
                                              .outlineIndigo502
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder24),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCloudupload1,
                                                    height: getSize(40),
                                                    width: getSize(40)),
                                                Padding(
                                                    padding: getPadding(top: 8),
                                                    child: Text(
                                                        "lbl_upload_file".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPlusJakartaSansSemiBold14Gray900
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.07))))
                                              ]))))),
                        ),
                        Container(
                            width: double.maxFinite,
                            child: Container(
                                margin: getMargin(top: 28, bottom: 5),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("msg_website_blog_or".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPlusJakartaSansMedium14Gray900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.07))),
                                      BlocSelector<ApplyJobBloc, ApplyJobState,
                                          TextEditingController?>(
                                          selector: (state) =>
                                          state.websiteController,
                                          builder: (context, websiteController) {
                                            return CustomTextFormField(
                                              focusNode: FocusNode(),
                                              controller: websiteController,
                                              hintText:
                                              "lbl_https".tr,
                                              margin: getMargin(
                                                  top: 12,
                                                  bottom: 12),
                                              padding: TextFormFieldPadding
                                                  .PaddingT15,
                                              textInputAction:
                                              TextInputAction.done,
                                              textInputType:
                                              TextInputType.emailAddress,
                                            );
                                          }),
                                      // Container(
                                      //     width: double.maxFinite,
                                      //     child: Container(
                                      //         width: getHorizontalSize(327),
                                      //         margin: getMargin(top: 7),
                                      //         padding: getPadding(
                                      //             left: 16,
                                      //             top: 12,
                                      //             right: 16,
                                      //             bottom: 12),
                                      //         decoration: AppDecoration
                                      //             .outlineIndigo50
                                      //             .copyWith(
                                      //                 borderRadius:
                                      //                     BorderRadiusStyle
                                      //                         .roundedBorder24),
                                      //         child: Column(
                                      //             mainAxisSize:
                                      //                 MainAxisSize.min,
                                      //             crossAxisAlignment:
                                      //                 CrossAxisAlignment.start,
                                      //             mainAxisAlignment:
                                      //                 MainAxisAlignment.end,
                                      //             children: [
                                      //               Padding(
                                      //                   padding:
                                      //                       getPadding(top: 5),
                                      //                   child: Text(
                                      //                       "lbl_https".tr,
                                      //                       overflow:
                                      //                           TextOverflow
                                      //                               .ellipsis,
                                      //                       textAlign:
                                      //                           TextAlign.left,
                                      //                       style: AppStyle
                                      //                           .txtPlusJakartaSansMedium16Bluegray400
                                      //                           .copyWith(
                                      //                               letterSpacing:
                                      //                                   getHorizontalSize(
                                      //                                       0.08))))
                                      //             ])))
                                    ])))
                      ])),
              bottomNavigationBar: CustomButton(
                  height: getVerticalSize(56),
                  text: "lbl_continue".tr,
                  margin: getMargin(left: 24, right: 24, bottom: 40),
                  variant: ButtonVariant.FillGray900,
                  shape: ButtonShape.RoundedBorder24,
                  padding: ButtonPadding.PaddingAll17,
                  fontStyle: ButtonFontStyle.PlusJakartaSansSemiBold16Gray50,
                  onTap: () {
                    onTapContinue(context);
                  })));
    });
  }

  requestStoragePermission(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? fileList = [];
    FileManager().filePickerMethod(1000 * 1000, ['pdf', 'doc'],
        getFiles: (value) {
      fileList = value;
    });
  }

  onTapContinue(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: ApplyJobPopupDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }

  onBackPressed(BuildContext context) {
    NavigatorService.goBack();
  }
}
