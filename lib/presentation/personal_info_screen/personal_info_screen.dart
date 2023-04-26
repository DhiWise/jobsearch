import 'bloc/personal_info_bloc.dart';
import 'models/personal_info_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:e_commerce_app/core/utils/validation_functions.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:e_commerce_app/widgets/custom_button.dart';
import 'package:e_commerce_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore_for_file: must_be_immutable
class PersonalInfoScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<PersonalInfoBloc>(
        create: (context) => PersonalInfoBloc(
            PersonalInfoState(personalInfoModelObj: PersonalInfoModel()))
          ..add(PersonalInfoInitialEvent()),
        child: PersonalInfoScreen());
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
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_personal_info".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgEditsquare,
                      margin:
                          getMargin(left: 24, top: 13, right: 24, bottom: 13))
                ]),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: getPadding(top: 32),
                    child: Padding(
                        padding: getPadding(left: 24, right: 24, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_first_name".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtPlusJakartaSansMedium14Gray900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.07))),
                              BlocSelector<PersonalInfoBloc, PersonalInfoState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.firstnameController,
                                  builder: (context, firstnameController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: firstnameController,
                                        hintText: "lbl_gustavo".tr,
                                        margin: getMargin(top: 9));
                                  }),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Text("lbl_last_name".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Gray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              BlocSelector<PersonalInfoBloc, PersonalInfoState,
                                      TextEditingController?>(
                                  selector: (state) => state.lastnameController,
                                  builder: (context, lastnameController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: lastnameController,
                                        hintText: "lbl_lipshutz".tr,
                                        margin: getMargin(top: 9));
                                  }),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Text("lbl_email".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Gray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              BlocSelector<PersonalInfoBloc, PersonalInfoState,
                                      TextEditingController?>(
                                  selector: (state) => state.emailController,
                                  builder: (context, emailController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: emailController,
                                        hintText: "lbl_xyz_gmail_com".tr,
                                        margin: getMargin(top: 9),
                                        textInputType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidEmail(value,
                                                  isRequired: true))) {
                                            return "Please enter valid email";
                                          }
                                          return null;
                                        });
                                  }),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Text("lbl_phone".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Gray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              BlocSelector<PersonalInfoBloc, PersonalInfoState,
                                      TextEditingController?>(
                                  selector: (state) => state.mobilenoController,
                                  builder: (context, mobilenoController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: mobilenoController,
                                        hintText: "lbl_1_1234567890".tr,
                                        margin: getMargin(top: 9));
                                  }),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Text("lbl_location".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Gray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              BlocSelector<PersonalInfoBloc, PersonalInfoState,
                                      TextEditingController?>(
                                  selector: (state) => state.locationController,
                                  builder: (context, locationController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: locationController,
                                        hintText: "lbl_lorem_ipsun".tr,
                                        margin: getMargin(top: 9),
                                        padding:
                                            TextFormFieldPadding.PaddingT55,
                                        textInputAction: TextInputAction.done,
                                        maxLines: 6);
                                  })
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(56),
                text: "lbl_save_changes".tr,
                margin: getMargin(left: 24, right: 24, bottom: 44),
                variant: ButtonVariant.FillBluegray5001,
                shape: ButtonShape.RoundedBorder24,
                padding: ButtonPadding.PaddingAll17,
                fontStyle: ButtonFontStyle.PlusJakartaSansSemiBold16Bluegray300,
                onTap: () {
                  onTapEditProfile(context);
                })));
  }

  onTapEditProfile(BuildContext context) {
    context.read<PersonalInfoBloc>().add(
          UpdateUpdateProfileEvent(
            onUpdateUpdateProfileEventSuccess: () {
              _onUpdateUpdateProfileEventSuccess(context);
            },
            onUpdateUpdateProfileEventError: () {
              _onUpdateUpdateProfileEventError(context);
            },
          ),
        );
  }

  void _onUpdateUpdateProfileEventSuccess(BuildContext context) {
    Fluttertoast.showToast(
      msg: "Profile successfully updated ",
    );
  }

  void _onUpdateUpdateProfileEventError(BuildContext context) {
    Fluttertoast.showToast(
      msg: context
          .read<PersonalInfoBloc>()
          .putUpdateProfileResp
          .message!
          .toString(),
    );
  }

  onBackPressed(BuildContext context) {
    NavigatorService.goBack();
  }
}
