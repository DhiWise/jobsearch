import '../notifications_general_screen/widgets/listbag1_item_widget.dart';
import 'bloc/notifications_general_bloc.dart';
import 'models/listbag1_item_model.dart';
import 'models/notifications_general_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:e_commerce_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class NotificationsGeneralScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationsGeneralBloc>(
        create: (context) => NotificationsGeneralBloc(NotificationsGeneralState(
            notificationsGeneralModelObj: NotificationsGeneralModel()))
          ..add(NotificationsGeneralInitialEvent()),
        child: NotificationsGeneralScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgGroup162799,
                    margin: getMargin(left: 24, top: 13, bottom: 13),onTap: (){
            onBackPressed(context);
            },),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_notifications".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgGroup162903,
                      margin:
                          getMargin(left: 24, top: 13, right: 24, bottom: 13),
                      onTap: () {
                        onTapGroup162903(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 30, right: 24, bottom: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(children: [
                        CustomButton(
                            height: getVerticalSize(44),
                            width: getHorizontalSize(79),
                            text: "lbl_general".tr,
                            variant: ButtonVariant.FillGray900,
                            shape: ButtonShape.RoundedBorder12,
                            padding: ButtonPadding.PaddingAll14,
                            fontStyle: ButtonFontStyle
                                .PlusJakartaSansSemiBold12WhiteA70001),
                        CustomButton(
                            height: getVerticalSize(44),
                            width: getHorizontalSize(111),
                            text: "lbl_my_proposals".tr,
                            margin: getMargin(left: 12),
                            variant: ButtonVariant.OutlineBluegray50,
                            shape: ButtonShape.RoundedBorder12,
                            padding: ButtonPadding.PaddingAll14,
                            fontStyle: ButtonFontStyle
                                .PlusJakartaSansSemiBold12Gray600,
                            onTap: () {
                              onTapMyproposals(context);
                            })
                      ]),
                      Expanded(
                          child: Padding(
                              padding: getPadding(top: 24, bottom: 117),
                              child: BlocSelector<
                                      NotificationsGeneralBloc,
                                      NotificationsGeneralState,
                                      NotificationsGeneralModel?>(
                                  selector: (state) =>
                                      state.notificationsGeneralModelObj,
                                  builder:
                                      (context, notificationsGeneralModelObj) {
                                    return ListView.separated(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return Padding(
                                              padding: getPadding(
                                                  top: 15.5, bottom: 15.5),
                                              child: SizedBox(
                                                  width: getHorizontalSize(323),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .indigo50)));
                                        },
                                        itemCount: notificationsGeneralModelObj
                                                ?.listbag1ItemList.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          Listbag1ItemModel model =
                                              notificationsGeneralModelObj
                                                          ?.listbag1ItemList[
                                                      index] ??
                                                  Listbag1ItemModel();
                                          return Listbag1ItemWidget(model);
                                        });
                                  })))
                    ]))));
  }

  onTapMyproposals(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationsMyProposalsScreen,
    );
  }

  onTapGroup162903(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingsScreen,
    );
  }

  onBackPressed(BuildContext context) {
    NavigatorService.goBack();
  }
}
