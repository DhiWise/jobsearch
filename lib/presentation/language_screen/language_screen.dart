import '../language_screen/widgets/listchineses_item_widget.dart';
import '../language_screen/widgets/listenglishuk_item_widget.dart';
import 'bloc/language_bloc.dart';
import 'models/language_model.dart';
import 'models/listchineses_item_model.dart';
import 'models/listenglishuk_item_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<LanguageBloc>(
      create: (context) => LanguageBloc(LanguageState(
        languageModelObj: LanguageModel(),
      ))
        ..add(LanguageInitialEvent()),
      child: LanguageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA70002,
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
            onTap: (){
              onBackPressed(context);
            },
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_language".tr,
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                child: Container(
                  padding: getPadding(
                    left: 16,
                    top: 21,
                    right: 16,
                    bottom: 21,
                  ),
                  decoration: AppDecoration.outlineIndigo50.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 2,
                        ),
                        child: Text(
                          "msg_suggested_languages".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle
                              .txtPlusJakartaSansSemiBold12Bluegray400
                              .copyWith(
                            letterSpacing: getHorizontalSize(
                              0.06,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: BlocSelector<LanguageBloc, LanguageState,
                            LanguageModel?>(
                          selector: (state) => state.languageModelObj,
                          builder: (context, languageModelObj) {
                            return ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Padding(
                                  padding: getPadding(
                                    top: 7.0,
                                    bottom: 7.0,
                                  ),
                                  child: SizedBox(
                                    width: getHorizontalSize(
                                      295,
                                    ),
                                    child: Divider(
                                      height: getVerticalSize(
                                        1,
                                      ),
                                      thickness: getVerticalSize(
                                        1,
                                      ),
                                      color: ColorConstant.indigo50,
                                    ),
                                  ),
                                );
                              },
                              itemCount: languageModelObj
                                      ?.listenglishukItemList.length ??
                                  0,
                              itemBuilder: (context, index) {
                                ListenglishukItemModel model = languageModelObj
                                        ?.listenglishukItemList[index] ??
                                    ListenglishukItemModel();
                                return ListenglishukItemWidget(
                                  model,
                                  changeCheckBox: (value) {
                                    context.read<LanguageBloc>().add(
                                        ListenglishukItemEvent(
                                            index: index, isCheckbox: value));
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                child: Container(
                  margin: getMargin(
                    top: 24,
                    bottom: 5,
                  ),
                  padding: getPadding(
                    all: 16,
                  ),
                  decoration: AppDecoration.outlineIndigo50.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 3,
                        ),
                        child: Text(
                          "lbl_other_languages".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle
                              .txtPlusJakartaSansSemiBold12Bluegray400
                              .copyWith(
                            letterSpacing: getHorizontalSize(
                              0.06,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 19,
                        ),
                        child: BlocSelector<LanguageBloc, LanguageState,
                            LanguageModel?>(
                          selector: (state) => state.languageModelObj,
                          builder: (context, languageModelObj) {
                            return ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Padding(
                                  padding: getPadding(
                                    top: 8.0,
                                    bottom: 8.0,
                                  ),
                                  child: SizedBox(
                                    width: getHorizontalSize(
                                      295,
                                    ),
                                    child: Divider(
                                      height: getVerticalSize(
                                        1,
                                      ),
                                      thickness: getVerticalSize(
                                        1,
                                      ),
                                      color: ColorConstant.indigo50,
                                    ),
                                  ),
                                );
                              },
                              itemCount: languageModelObj
                                      ?.listchinesesItemList.length ??
                                  0,
                              itemBuilder: (context, index) {
                                ListchinesesItemModel model = languageModelObj
                                        ?.listchinesesItemList[index] ??
                                    ListchinesesItemModel();
                                return ListchinesesItemWidget(
                                  model,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onBackPressed(BuildContext context) {
    NavigatorService.goBack();
  }
}
