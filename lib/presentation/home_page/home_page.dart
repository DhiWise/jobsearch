import '../home_page/widgets/listbag_item_widget.dart';
import '../home_page/widgets/listsettings_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'models/listbag_item_model.dart';
import 'models/listsettings_item_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 74,
                leading: CustomImageView(
                    imagePath: ImageConstant.imgImage,
                    height: getSize(50),
                    width: getSize(50),
                    radius: BorderRadius.circular(getHorizontalSize(25)),
                    margin: getMargin(left: 24)),
                title: Padding(
                    padding: getPadding(left: 10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("msg_hi_welcome_back".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPlusJakartaSansBold14
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.07)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 9, right: 33),
                                  child: Text("msg_find_your_dream".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium12Bluegray400
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.06)))))
                        ])),
                actions: [
                  AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgNotification,
                    margin: getMargin(left: 24, top: 13, right: 24, bottom: 13),
                    onTap: () {
                      onTapNotification(context);
                    },
                  )
                ]),
            body: Container(
                width: double.maxFinite,
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                                onTap: () {
                                  onTapRowrewind(context);
                                },
                                child: Container(
                                    margin:
                                        getMargin(left: 24, top: 30, right: 24),
                                    padding: getPadding(
                                        left: 16,
                                        top: 14,
                                        right: 16,
                                        bottom: 14),
                                    decoration: AppDecoration.outlineIndigo50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgRewind,
                                              height: getSize(18),
                                              width: getSize(18),
                                              margin:
                                                  getMargin(top: 2, bottom: 2)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 8, top: 2),
                                              child: Text("lbl_search".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPlusJakartaSansMedium16Bluegray400
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.08)))),
                                          Spacer(),
                                          SizedBox(
                                              height: getVerticalSize(22),
                                              child: VerticalDivider(
                                                  width: getHorizontalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: ColorConstant.indigo50,
                                                  indent: getHorizontalSize(2),
                                                  endIndent:
                                                      getHorizontalSize(2))),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgFilter,
                                              height: getSize(18),
                                              width: getSize(18),
                                              margin: getMargin(
                                                  left: 7, top: 2, bottom: 2))
                                        ])))),
                        Padding(
                            padding: getPadding(left: 24, top: 25),
                            child: Text("lbl_recommendation".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPlusJakartaSansSemiBold18
                                    .copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.09)))),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: getVerticalSize(193),
                                child: BlocSelector<HomeBloc, HomeState,
                                        HomeModel?>(
                                    selector: (state) => state.homeModelObj,
                                    builder: (context, homeModelObj) {
                                      return ListView.separated(
                                          padding:
                                              getPadding(left: 24, top: 17),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16));
                                          },
                                          itemCount: homeModelObj
                                                  ?.listbagItemList.length ??
                                              0,
                                          itemBuilder: (context, index) {
                                            ListbagItemModel model =
                                                homeModelObj?.listbagItemList[
                                                        index] ??
                                                    ListbagItemModel();
                                            return ListbagItemWidget(model);
                                          });
                                    }))),
                        Padding(
                            padding: getPadding(left: 24, top: 22),
                            child: Text("lbl_recent_jobs".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterSemiBold16.copyWith(
                                    letterSpacing: getHorizontalSize(0.08)))),
                        Padding(
                            padding: getPadding(left: 24, top: 16, right: 24),
                            child:
                                BlocSelector<HomeBloc, HomeState, HomeModel?>(
                                    selector: (state) => state.homeModelObj,
                                    builder: (context, homeModelObj) {
                                      if (homeModelObj == null) {
                                        return Container();
                                      }
                                      return ListView.separated(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16));
                                          },
                                          itemCount: homeModelObj
                                                  ?.listsettingsItemList
                                                  .length ??
                                              0,
                                          itemBuilder: (context, index) {
                                            ListsettingsItemModel model =
                                                homeModelObj?.listsettingsItemList[
                                                        index] ??
                                                    ListsettingsItemModel();
                                            return ListsettingsItemWidget(model,
                                                onTapColumnsettings: () {
                                              onTapColumnsettings(context);
                                            });
                                          });
                                    }))
                      ]),
                ))));
  }

  onTapColumnsettings(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.jobDetailsScreen);
  }

  onTapRowrewind(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchScreen,
    );
  }

  onTapNotification(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationsGeneralScreen,
    );
  }
}
