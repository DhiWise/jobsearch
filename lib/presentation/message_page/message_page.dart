import '../message_page/widgets/message_item_widget.dart';
import 'bloc/message_bloc.dart';
import 'models/message_item_model.dart';
import 'models/message_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:e_commerce_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<MessageBloc>(
        create: (context) =>
            MessageBloc(MessageState(messageModelObj: MessageModel()))
              ..add(MessageInitialEvent()),
        child: MessagePage());
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
                    margin: getMargin(left: 24, top: 13, bottom: 14)),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_message".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(all: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(top: 4),
                          padding: getPadding(
                              left: 16, top: 12, right: 16, bottom: 12),
                          decoration: AppDecoration.outlineIndigo50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgRewind,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(top: 4, bottom: 4)),
                                Padding(
                                    padding: getPadding(left: 8, top: 5),
                                    child: Text("msg_search_message".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPlusJakartaSansMedium16Bluegray400
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.08)))),
                                Spacer(),
                                SizedBox(
                                    height: getVerticalSize(26),
                                    child: VerticalDivider(
                                        width: getHorizontalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.indigo50,
                                        indent: getHorizontalSize(4),
                                        endIndent: getHorizontalSize(4))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgFilter,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin:
                                        getMargin(left: 7, top: 4, bottom: 4))
                              ])),
                      Padding(
                          padding: getPadding(top: 24),
                          child: BlocSelector<MessageBloc, MessageState,
                                  MessageModel?>(
                              selector: (state) => state.messageModelObj,
                              builder: (context, messageModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return Padding(
                                          padding:
                                              getPadding(top: 7.5, bottom: 7.5),
                                          child: SizedBox(
                                              width: getHorizontalSize(327),
                                              child: Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color:
                                                      ColorConstant.indigo50)));
                                    },
                                    itemCount: messageModelObj
                                            ?.messageItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      MessageItemModel model = messageModelObj
                                              ?.messageItemList[index] ??
                                          MessageItemModel();
                                      return MessageItemWidget(model,
                                          onTapChat: () {
                                        onTapChat(context);
                                      }, onTapRowdot: () {
                                        onTapRowdot(context);
                                      });
                                    });
                              })),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(46),
                          width: getHorizontalSize(137),
                          text: "lbl_new_chat".tr,
                          variant: ButtonVariant.FillGray900,
                          shape: ButtonShape.RoundedBorder20,
                          padding: ButtonPadding.PaddingT14,
                          fontStyle: ButtonFontStyle.PlusJakartaSansSemiBold14,
                          prefixWidget: Container(
                              margin: getMargin(right: 4),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgPlusGray50)))
                    ]))));
  }

  onTapChat(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chatScreen,
    );
  }

  onTapRowdot(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chatScreen,
    );
  }
}
