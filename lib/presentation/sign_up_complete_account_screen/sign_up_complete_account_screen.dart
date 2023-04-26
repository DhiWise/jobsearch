import 'bloc/sign_up_complete_account_bloc.dart';
import 'models/sign_up_complete_account_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:e_commerce_app/core/utils/validation_functions.dart';
import 'package:e_commerce_app/widgets/custom_button.dart';
import 'package:e_commerce_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore_for_file: must_be_immutable
class SignUpCompleteAccountScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpCompleteAccountBloc>(
        create: (context) => SignUpCompleteAccountBloc(
            SignUpCompleteAccountState(
                signUpCompleteAccountModelObj: SignUpCompleteAccountModel()))
          ..add(SignUpCompleteAccountInitialEvent()),
        child: SignUpCompleteAccountScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
              child: Form(
                  key: _formKey,
                  child: Container(
                      width: double.maxFinite,
                      padding:
                          getPadding(left: 24, top: 13, right: 24, bottom: 13),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgGroup162799,
                                height: getSize(24),
                                width: getSize(24)),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: getPadding(top: 47, right: 15),
                                    child: Text("msg_complete_your_account".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPlusJakartaSansBold24
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.12))))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(top: 9),
                                    child: Text("msg_lorem_ipsum_dolor".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPlusJakartaSansMedium14
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.07))))),
                            Padding(
                                padding: getPadding(top: 33),
                                child: Text("lbl_first_name".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPlusJakartaSansMedium14Bluegray900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.07)))),
                            BlocSelector<
                                    SignUpCompleteAccountBloc,
                                    SignUpCompleteAccountState,
                                    TextEditingController?>(
                                selector: (state) => state.firstnameController,
                                builder: (context, firstnameController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: firstnameController,
                                      hintText: "msg_enter_your_first".tr,
                                      margin: getMargin(top: 9),
                                      padding: TextFormFieldPadding.PaddingT15,
                                      validator: (value) {
                                        if (!isText(value)) {
                                          return "Please enter valid text";
                                        }
                                        return null;
                                      });
                                }),
                            Padding(
                                padding: getPadding(top: 18),
                                child: Text("lbl_last_name".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPlusJakartaSansMedium14Bluegray900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.07)))),
                            BlocSelector<
                                    SignUpCompleteAccountBloc,
                                    SignUpCompleteAccountState,
                                    TextEditingController?>(
                                selector: (state) => state.lastnameController,
                                builder: (context, lastnameController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: lastnameController,
                                      hintText: "msg_enter_your_last".tr,
                                      margin: getMargin(top: 9),
                                      padding: TextFormFieldPadding.PaddingT15,
                                      validator: (value) {
                                        if (!isText(value)) {
                                          return "Please enter valid text";
                                        }
                                        return null;
                                      });
                                }),
                            Padding(
                                padding: getPadding(top: 18),
                                child: Text("lbl_email".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPlusJakartaSansMedium14Bluegray900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.07)))),
                            BlocSelector<
                                    SignUpCompleteAccountBloc,
                                    SignUpCompleteAccountState,
                                    TextEditingController?>(
                                selector: (state) => state.emailController,
                                builder: (context, emailController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: emailController,
                                      hintText: "msg_enter_your_email".tr,
                                      margin: getMargin(top: 9),
                                      padding: TextFormFieldPadding.PaddingT15,
                                      validator: (value) {
                                        if (!isValidEmail(value,
                                            isRequired: true)) {
                                          return "Please enter valid email";
                                        }
                                        return null;
                                      });
                                }),
                            Padding(
                                padding: getPadding(top: 18),
                                child: Text("lbl_password".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPlusJakartaSansMedium14Bluegray900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.07)))),
                            BlocBuilder<SignUpCompleteAccountBloc,
                                    SignUpCompleteAccountState>(
                                builder: (context, state) {
                              return CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: state.passwordController,
                                  hintText: "msg_create_a_password".tr,
                                  margin: getMargin(top: 9),
                                  padding: TextFormFieldPadding.PaddingT15_1,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  suffix: InkWell(
                                      onTap: () {
                                        context
                                            .read<SignUpCompleteAccountBloc>()
                                            .add(ChangePasswordVisibilityEvent(
                                                value: !state.isShowPassword));
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 30,
                                              top: 14,
                                              right: 16,
                                              bottom: 14),
                                          child: CustomImageView(
                                              svgPath: state.isShowPassword
                                                  ? ImageConstant.imgEye
                                                  : ImageConstant.imgEye))),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(52)),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: state.isShowPassword);
                            }),
                            GestureDetector(
                                onTap: (){
                                  onSelectCountry(context);
                                },
                              child: Container(
                                  margin: getMargin(top: 16),
                                  padding: getPadding(
                                      left: 16, top: 12, right: 16, bottom: 12),
                                  decoration: AppDecoration.outlineIndigo50
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 5),
                                            child: Text("msg_select_a_country".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansMedium16
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.08)))),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowright,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(top: 1, bottom: 1))
                                      ])),
                            ),
                            CustomButton(
                                height: getVerticalSize(56),
                                text: "msg_continue_with_email".tr,
                                margin: getMargin(top: 40),
                                variant: ButtonVariant.FillGray900,
                                shape: ButtonShape.RoundedBorder24,
                                padding: ButtonPadding.PaddingAll17,
                                fontStyle: ButtonFontStyle
                                    .PlusJakartaSansSemiBold16Gray50,
                                onTap: () {
                                  onTapContinueButton(context);
                                }),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(
                                        left: 40, top: 28, right: 40),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("msg_already_have_an".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPlusJakartaSansSemiBold16
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.08))),
                                          GestureDetector(
                                              onTap: () {
                                                onBackPressed(context);
                                              },
                                              child: Padding(
                                                  padding: getPadding(left: 3),
                                                  child: Text("lbl_login".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPlusJakartaSansSemiBold16Gray900
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.08)))))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    width: getHorizontalSize(245),
                                    margin: getMargin(
                                        left: 40,
                                        top: 19,
                                        right: 40,
                                        bottom: 5),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "msg_by_signing_up_you2".tr,
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.blueGray400,
                                                  fontSize: getFontSize(14),
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing:
                                                      getHorizontalSize(0.07))),
                                          TextSpan(
                                              text: "lbl_terms".tr,
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.gray90001,
                                                  fontSize: getFontSize(14),
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing:
                                                      getHorizontalSize(0.07))),
                                          TextSpan(
                                              text: "lbl_and".tr,
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.blueGray400,
                                                  fontSize: getFontSize(14),
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing:
                                                      getHorizontalSize(0.07))),
                                          TextSpan(
                                              text: "msg_conditions_of_use".tr,
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.gray90001,
                                                  fontSize: getFontSize(14),
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing:
                                                      getHorizontalSize(0.07)))
                                        ]),
                                        textAlign: TextAlign.center)))
                          ]))),
            )));
  }

  onTapContinueButton(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<SignUpCompleteAccountBloc>().add(
            CreateRegisterEvent(
              onCreateRegisterEventSuccess: () {
                _onCreateRegisterEventSuccess(context);
              },
              onCreateRegisterEventError: () {
                _onCreateRegisterEventError(context);
              },
            ),
          );
    }
  }

  void _onCreateRegisterEventSuccess(BuildContext context) {
    NavigatorService.pushNamedAndRemoveUntil(
      AppRoutes.loginScreen,
    );
  }

  void _onCreateRegisterEventError(BuildContext context) {
    Fluttertoast.showToast(
      msg: context.read<SignUpCompleteAccountBloc>().postRegisterResp.message ??
          "",
    );
  }

  onBackPressed(BuildContext context) {
    NavigatorService.goBack();
  }

  onSelectCountry(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.selectACountryScreen);
  }
}
