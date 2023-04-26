import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:e_commerce_app/core/utils/validation_functions.dart';
import 'package:e_commerce_app/widgets/custom_button.dart';
import 'package:e_commerce_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 24, top: 13, right: 24, bottom: 13),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgGroup162799,
                              height: getSize(24),
                              width: getSize(24),
                              alignment: Alignment.centerLeft),
                          Padding(
                              padding: getPadding(top: 44),
                              child: Text("msg_hi_welcome_back".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPlusJakartaSansBold24
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.12)))),
                          Padding(
                              padding: getPadding(top: 11),
                              child: Text("msg_lorem_ipsum_dolor".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPlusJakartaSansMedium14
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.07)))),
                          CustomButton(
                              height: getVerticalSize(56),
                              text: "msg_continue_with_google".tr,
                              margin: getMargin(top: 31),
                              variant: ButtonVariant.OutlineGray900,
                              shape: ButtonShape.RoundedBorder24,
                              padding: ButtonPadding.PaddingT17,
                              fontStyle:
                                  ButtonFontStyle.PlusJakartaSansSemiBold16,
                              prefixWidget: Container(
                                  margin: getMargin(right: 12),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgGooglesymbol1))),
                          CustomButton(
                              height: getVerticalSize(56),
                              text: "msg_continue_with_apple".tr,
                              margin: getMargin(top: 16),
                              variant: ButtonVariant.OutlineGray900,
                              shape: ButtonShape.RoundedBorder24,
                              padding: ButtonPadding.PaddingT17,
                              fontStyle:
                                  ButtonFontStyle.PlusJakartaSansSemiBold16,
                              prefixWidget: Container(
                                  margin: getMargin(right: 12),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgIconApple))),
                          Padding(
                              padding: getPadding(left: 33, top: 26, right: 33),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 8),
                                        child: SizedBox(
                                            width: getHorizontalSize(62),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color:
                                                    ColorConstant.indigo50))),
                                    Padding(
                                        padding: getPadding(left: 12),
                                        child: Text("msg_or_continue_with".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlusJakartaSansSemiBold14Bluegray300
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.07)))),
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 8),
                                        child: SizedBox(
                                            width: getHorizontalSize(74),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.indigo50,
                                                indent: getHorizontalSize(12))))
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 28),
                                  child: Text("lbl_email".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07))))),
                          BlocSelector<LoginBloc, LoginState,
                                  TextEditingController?>(
                              selector: (state) => state.emailController,
                              builder: (context, emailController) {
                                return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: emailController,
                                    hintText: "msg_enter_your_email".tr,
                                    margin: getMargin(top: 9),
                                    padding: TextFormFieldPadding.PaddingT15,
                                    textInputAction: TextInputAction.done,
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    });
                              }),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(top: 18),
                                child: Text("lbl_password".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPlusJakartaSansMedium14Bluegray900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.07)))),
                          ),
                          BlocBuilder<LoginBloc, LoginState>(
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
                                      context.read<LoginBloc>().add(
                                          ChangePasswordVisibilityEvent(
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
                          Padding(
                              padding: getPadding(left: 41, top: 26, right: 41),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text(
                                            "msg_don_t_have_an_account".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlusJakartaSansSemiBold16
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.08)))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapSignUp(context);
                                        },
                                        child: Padding(
                                            padding:
                                                getPadding(left: 2, top: 1),
                                            child: Text("lbl_sign_up".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansSemiBold16Gray900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.08)))))
                                  ])),
                          Container(
                              width: getHorizontalSize(245),
                              margin: getMargin(
                                  left: 40, top: 14, right: 40, bottom: 5),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_by_signing_up_you2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.blueGray400,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontWeight: FontWeight.w600,
                                            letterSpacing:
                                                getHorizontalSize(0.07))),
                                    TextSpan(
                                        text: "lbl_terms".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray90001,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontWeight: FontWeight.w600,
                                            letterSpacing:
                                                getHorizontalSize(0.07))),
                                    TextSpan(
                                        text: "lbl_and".tr,
                                        style: TextStyle(
                                            color: ColorConstant.blueGray400,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontWeight: FontWeight.w600,
                                            letterSpacing:
                                                getHorizontalSize(0.07))),
                                    TextSpan(
                                        text: "msg_conditions_of_use".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray90001,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontWeight: FontWeight.w600,
                                            letterSpacing:
                                                getHorizontalSize(0.07)))
                                  ]),
                                  textAlign: TextAlign.center))
                        ])))));
  }

  onTapContinueButton(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<LoginBloc>().add(
            CreateLoginEvent(
              onCreateLoginEventSuccess: () {
                _onCreateLoginEventSuccess(context);
              },
              onCreateLoginEventError: () {
                _onCreateLoginEventError(context);
              },
            ),
          );
    }
  }

  void _onCreateLoginEventSuccess(BuildContext context) {
    NavigatorService.pushNamedAndRemoveUntil(
      AppRoutes.homeContainerScreen,
    );
  }

  void _onCreateLoginEventError(BuildContext context) {
    Fluttertoast.showToast(
      msg: context.read<LoginBloc>().postLoginResp.message!.toString(),
    );
  }

  onTapSignUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpCompleteAccountScreen,
    );
  }
}
