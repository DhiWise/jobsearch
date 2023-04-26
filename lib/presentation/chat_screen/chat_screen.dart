import 'bloc/chat_bloc.dart';
import 'models/chat_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:e_commerce_app/widgets/custom_button.dart';
import 'package:e_commerce_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ChatBloc>(
      create: (context) => ChatBloc(ChatState(
        chatModelObj: ChatModel(),
      ))
        ..add(ChatInitialEvent()),
      child: ChatScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA70002,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            51,
          ),
          leadingWidth: 48,
          leading: AppbarImage(
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            svgPath: ImageConstant.imgGroup162799,
            margin: getMargin(
              left: 24,
              top: 13,
              bottom: 14,
            ),
            onTap: () {
              onBackPressed(context);
            },
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_chance_septimus".tr,
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 24,
            top: 28,
            right: 24,
            bottom: 28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  right: 80,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: getSize(
                        32,
                      ),
                      width: getSize(
                        32,
                      ),
                      margin: getMargin(
                        bottom: 36,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgAvatar32x32,
                            height: getSize(
                              32,
                            ),
                            width: getSize(
                              32,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                16,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: getSize(
                                8,
                              ),
                              width: getSize(
                                8,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.tealA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    4,
                                  ),
                                ),
                                border: Border.all(
                                  color: ColorConstant.whiteA70001,
                                  width: getHorizontalSize(
                                    1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: getMargin(
                          left: 12,
                        ),
                        padding: getPadding(
                          left: 12,
                          top: 10,
                          right: 12,
                          bottom: 10,
                        ),
                        decoration: AppDecoration.fillGray100.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL241,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: getHorizontalSize(
                                164,
                              ),
                              margin: getMargin(
                                top: 4,
                                right: 14,
                              ),
                              child: Text(
                                "msg_lorem_ipsum_dolor5".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtPlusJakartaSansMedium14Gray600
                                    .copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.07,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 44,
                  top: 6,
                ),
                child: Text(
                  "lbl_15_42_pm".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPlusJakartaSansMedium10.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.05,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: getPadding(
                    left: 97,
                    top: 26,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: CustomButton(
                          height: getVerticalSize(
                            46,
                          ),
                          text: "msg_lorem_ipsum_dolor6".tr,
                          variant: ButtonVariant.FillGray900,
                          shape: ButtonShape.CustomBorderTL24,
                          padding: ButtonPadding.PaddingAll14,
                          fontStyle: ButtonFontStyle.PlusJakartaSansMedium14,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgAvatar2,
                        height: getSize(
                          32,
                        ),
                        width: getSize(
                          32,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            16,
                          ),
                        ),
                        margin: getMargin(
                          left: 12,
                          top: 7,
                          bottom: 7,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: getPadding(
                    top: 6,
                    right: 44,
                  ),
                  child: Text(
                    "lbl_15_42_pm".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPlusJakartaSansMedium10.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.05,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 26,
                  right: 80,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: getSize(
                        32,
                      ),
                      width: getSize(
                        32,
                      ),
                      margin: getMargin(
                        bottom: 36,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgAvatar32x32,
                            height: getSize(
                              32,
                            ),
                            width: getSize(
                              32,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                16,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: getSize(
                                8,
                              ),
                              width: getSize(
                                8,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.tealA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    4,
                                  ),
                                ),
                                border: Border.all(
                                  color: ColorConstant.whiteA70001,
                                  width: getHorizontalSize(
                                    1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: getMargin(
                          left: 12,
                        ),
                        padding: getPadding(
                          left: 12,
                          top: 10,
                          right: 12,
                          bottom: 10,
                        ),
                        decoration: AppDecoration.fillGray100.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL241,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: getHorizontalSize(
                                164,
                              ),
                              margin: getMargin(
                                top: 4,
                                right: 14,
                              ),
                              child: Text(
                                "msg_lorem_ipsum_dolor5".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtPlusJakartaSansMedium14Gray600
                                    .copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.07,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 44,
                  top: 6,
                  bottom: 5,
                ),
                child: Text(
                  "lbl_15_42_pm".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPlusJakartaSansMedium10.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.05,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar:
            BlocSelector<ChatBloc, ChatState, TextEditingController?>(
          selector: (state) => state.messageController,
          builder: (context, messageController) {
            return CustomTextFormField(
              focusNode: FocusNode(),
              controller: messageController,
              hintText: "msg_type_your_message".tr,
              margin: getMargin(
                left: 24,
                right: 24,
                bottom: 40,
              ),
              variant: TextFormFieldVariant.FillGray200,
              shape: TextFormFieldShape.CircleBorder28,
              padding: TextFormFieldPadding.PaddingAll20,
              fontStyle: TextFormFieldFontStyle.PlusJakartaSansMedium12,
              textInputAction: TextInputAction.done,
            );
          },
        ),
      ),
    );
  }

  onBackPressed(BuildContext context) {
    NavigatorService.goBack();
  }
}
