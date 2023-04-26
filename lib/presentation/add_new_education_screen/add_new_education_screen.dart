import 'bloc/add_new_education_bloc.dart';
import 'models/add_new_education_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:e_commerce_app/widgets/custom_button.dart';
import 'package:e_commerce_app/widgets/custom_drop_down.dart';
import 'package:e_commerce_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AddNewEducationScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AddNewEducationBloc>(
        create: (context) => AddNewEducationBloc(AddNewEducationState(
            addNewEducationModelObj: AddNewEducationModel()))
          ..add(AddNewEducationInitialEvent()),
        child: AddNewEducationScreen());
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
                title: AppbarTitle(text: "msg_add_new_education".tr)),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 32),
                    child: Padding(
                        padding: getPadding(left: 24, right: 24, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_school".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtPlusJakartaSansMedium14Bluegray900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.07))),
                              BlocSelector<
                                      AddNewEducationBloc,
                                      AddNewEducationState,
                                      TextEditingController?>(
                                  selector: (state) => state.schoolController,
                                  builder: (context, schoolController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: schoolController,
                                        hintText:
                                            "msg_ex_harvard_university".tr,
                                        margin: getMargin(top: 9));
                                  }),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Text("lbl_degree".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              BlocSelector<
                                      AddNewEducationBloc,
                                      AddNewEducationState,
                                      AddNewEducationModel?>(
                                  selector: (state) =>
                                      state.addNewEducationModelObj,
                                  builder: (context, addNewEducationModelObj) {
                                    return CustomDropDown(
                                        focusNode: FocusNode(),
                                        icon: Container(
                                            margin:
                                                getMargin(left: 30, right: 24),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray90002),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowdown)),
                                        hintText: "lbl_ex_bachelor".tr,
                                        margin: getMargin(top: 7),
                                        items: addNewEducationModelObj
                                                ?.dropdownItemList ??
                                            [],
                                        onChanged: (value) {
                                          context
                                              .read<AddNewEducationBloc>()
                                              .add(ChangeDropDownEvent(
                                                  value: value));
                                        });
                                  }),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Text("lbl_field_of_study".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              BlocSelector<
                                      AddNewEducationBloc,
                                      AddNewEducationState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.filedOfStudyController,
                                  builder: (context, filedOfStudyController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: filedOfStudyController,
                                        hintText: "lbl_ex_business".tr,
                                        margin: getMargin(top: 7));
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
                              BlocSelector<
                                      AddNewEducationBloc,
                                      AddNewEducationState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.startDateController,
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
                              BlocSelector<
                                      AddNewEducationBloc,
                                      AddNewEducationState,
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
                                  padding: getPadding(top: 18),
                                  child: Text("lbl_grade".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              BlocSelector<
                                      AddNewEducationBloc,
                                      AddNewEducationState,
                                      TextEditingController?>(
                                  selector: (state) => state.gradeController,
                                  builder: (context, gradeController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: gradeController,
                                        hintText: "lbl_ex_business".tr,
                                        margin: getMargin(top: 9));
                                  }),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Text("lbl_description".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              BlocSelector<
                                      AddNewEducationBloc,
                                      AddNewEducationState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.descriptionController,
                                  builder: (context, descriptionController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: descriptionController,
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
