import 'bloc/new_position_bloc.dart';
import 'models/new_position_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:e_commerce_app/widgets/custom_button.dart';
import 'package:e_commerce_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class NewPositionScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<NewPositionBloc>(
        create: (context) => NewPositionBloc(
            NewPositionState(newPositionModelObj: NewPositionModel()))
          ..add(NewPositionInitialEvent()),
        child: NewPositionScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 48,
                leading: AppbarImage(
                  height: getSize(24),
                  width: getSize(24),
                  svgPath: ImageConstant.imgGroup162799,
                  margin: getMargin(left: 24, top: 13, bottom: 13),
                  onTap: () {
                    onBackPressed(context);
                  },
                ),
                centerTitle: true,
                title: AppbarTitle(text: "msg_add_new_position".tr)),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 36),
                    child: Padding(
                        padding: getPadding(left: 24, right: 24, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_title".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtPlusJakartaSansMedium14Bluegray900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.07))),
                              BlocSelector<NewPositionBloc, NewPositionState,
                                      TextEditingController?>(
                                  selector: (state) => state.titleController,
                                  builder: (context, titleController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: titleController,
                                        hintText: "lbl_ex_ui_designer".tr,
                                        margin: getMargin(top: 9));
                                  }),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(top: 20),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("lbl_employment_type".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansMedium14Bluegray900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.07))),
                                            BlocSelector<
                                                    NewPositionBloc,
                                                    NewPositionState,
                                                    TextEditingController?>(
                                                selector: (state) => state
                                                    .employmentTypeController,
                                                builder: (context,
                                                    employmentTypeController) {
                                                  return CustomTextFormField(
                                                      focusNode: FocusNode(),
                                                      controller:
                                                          employmentTypeController,
                                                      hintText:
                                                          "lbl_please_select"
                                                              .tr,
                                                      margin: getMargin(top: 7),
                                                      padding:
                                                          TextFormFieldPadding
                                                              .PaddingT15_1,
                                                      suffix: Container(
                                                          margin: getMargin(
                                                              left: 30,
                                                              top: 14,
                                                              right: 19,
                                                              bottom: 13),
                                                          child: CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCheckmarkGray90002)),
                                                      suffixConstraints:
                                                          BoxConstraints(
                                                              maxHeight:
                                                                  getVerticalSize(
                                                                      52)));
                                                })
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Text("lbl_company_name".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              BlocSelector<NewPositionBloc, NewPositionState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.companyNameController,
                                  builder: (context, companyNameController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: companyNameController,
                                        hintText: "lbl_ex_shopee".tr,
                                        margin: getMargin(top: 7));
                                  }),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Text("lbl_location2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              BlocSelector<NewPositionBloc, NewPositionState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.locationController,
                                  builder: (context, locationController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: locationController,
                                        hintText:
                                            "msg_ex_singapore_singapore".tr,
                                        margin: getMargin(top: 9));
                                  }),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Text("lbl_start_date".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              BlocSelector<NewPositionBloc, NewPositionState,
                                      TextEditingController?>(
                                  selector: (state) => state.startDateController,
                                  builder: (context, startDateController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: startDateController,
                                        hintText: "lbl_select_date".tr,
                                        margin: getMargin(top: 9),
                                        padding:
                                            TextFormFieldPadding.PaddingT15_1,
                                        suffix: Container(
                                            margin: getMargin(
                                                left: 30,
                                                top: 14,
                                                right: 16,
                                                bottom: 14),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgCalendar)),
                                        suffixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(52)));
                                  }),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Text("lbl_end_date".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              BlocSelector<NewPositionBloc, NewPositionState,
                                      TextEditingController?>(
                                  selector: (state) => state.endDateController,
                                  builder: (context, endDateController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: endDateController,
                                        hintText: "lbl_select_date".tr,
                                        margin: getMargin(top: 9),
                                        padding:
                                            TextFormFieldPadding.PaddingT15_1,
                                        suffix: Container(
                                            margin: getMargin(
                                                left: 30,
                                                top: 14,
                                                right: 16,
                                                bottom: 14),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgCalendar)),
                                        suffixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(52)));
                                  }),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Text("msg_job_role_description".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              BlocSelector<NewPositionBloc, NewPositionState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.jobRoleDescriptionController,
                                  builder:
                                      (context, jobRoleDescriptionController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: jobRoleDescriptionController,
                                        hintText: "lbl_lorem_ipsun".tr,
                                        margin: getMargin(top: 7),
                                        padding:
                                            TextFormFieldPadding.PaddingT55,
                                        textInputAction: TextInputAction.done,
                                        maxLines: 6);
                                  })
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(56),
                text: "lbl_save_changes".tr,
                margin: getMargin(left: 24, right: 24, bottom: 37),
                variant: ButtonVariant.FillGray900,
                shape: ButtonShape.RoundedBorder24,
                padding: ButtonPadding.PaddingAll17,
                fontStyle: ButtonFontStyle.PlusJakartaSansSemiBold16Gray50,
                onTap: () {
                  onTapSavechanges(context);
                })));
  }

  onTapSavechanges(BuildContext context) {
    NavigatorService.goBack();
  }

  onBackPressed(BuildContext context) {
    NavigatorService.goBack();
  }
}
