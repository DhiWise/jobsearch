import '../job_details_screen/widgets/listdescription_item_widget.dart';
import '../job_details_screen/widgets/listwallet_item_widget.dart';
import 'bloc/job_details_bloc.dart';
import 'models/job_details_model.dart';
import 'models/listdescription_item_model.dart';
import 'models/listwallet_item_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:e_commerce_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class JobDetailsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<JobDetailsBloc>(
        create: (context) => JobDetailsBloc(
            JobDetailsState(jobDetailsModelObj: JobDetailsModel()))
          ..add(JobDetailsInitialEvent()),
        child: JobDetailsScreen());
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
                  margin: getMargin(left: 24, top: 13, bottom: 13),
                  onTap: () {
                    onBackPressed(context);
                  },
                ),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_job_details".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgBookmark,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 13))
                ]),
            body: Container(
                height: getVerticalSize(718),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                margin: getMargin(right: 24, left: 24),
                                padding: getPadding(
                                    left: 0, top: 24, right: 0, bottom: 0),
                                decoration: AppDecoration.outlineIndigo50
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: ColorConstant.gray100,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder39),
                                          child: Container(
                                              height: getSize(79),
                                              width: getSize(79),
                                              padding: getPadding(all: 19),
                                              decoration: AppDecoration
                                                  .fillGray100
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder39),
                                              child: Stack(children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCardano1Cyan400,
                                                    height: getSize(40),
                                                    width: getSize(40),
                                                    alignment: Alignment.center)
                                              ]))),
                                      Padding(
                                          padding: getPadding(top: 16),
                                          child: Text(
                                              "msg_senior_ui_ux_designer".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPlusJakartaSansBold14Bluegray900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.07)))),
                                      Padding(
                                          padding: getPadding(top: 7),
                                          child: Text("lbl_shopee_sg".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPlusJakartaSansMedium12Bluegray400
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.06)))),
                                      Padding(
                                          padding: getPadding(left: 1, top: 12),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomButton(
                                                    height: getVerticalSize(28),
                                                    width:
                                                        getHorizontalSize(69),
                                                    text: "lbl_fulltime".tr,
                                                    fontStyle: ButtonFontStyle
                                                        .InterRegular12),
                                                CustomButton(
                                                    height: getVerticalSize(28),
                                                    width:
                                                        getHorizontalSize(104),
                                                    text: "lbl_two_days_ago".tr,
                                                    margin: getMargin(left: 9),
                                                    fontStyle: ButtonFontStyle
                                                        .InterRegular12)
                                              ]))
                                    ])),
                            Container(
                                height: getVerticalSize(124),
                                child: BlocSelector<JobDetailsBloc,
                                        JobDetailsState, JobDetailsModel?>(
                                    selector: (state) =>
                                        state.jobDetailsModelObj,
                                    builder: (context, jobDetailsModelObj) {
                                      return ListView.separated(
                                          padding: getPadding(
                                              left: 24, top: 24, right: 24),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(54));
                                          },
                                          itemCount: jobDetailsModelObj
                                                  ?.listwalletItemList.length ??
                                              0,
                                          itemBuilder: (context, index) {
                                            ListwalletItemModel model =
                                                jobDetailsModelObj
                                                            ?.listwalletItemList[
                                                        index] ??
                                                    ListwalletItemModel();
                                            return ListwalletItemWidget(model);
                                          });
                                    })),
                            Container(
                                height: getVerticalSize(69),
                                child: BlocSelector<JobDetailsBloc,
                                        JobDetailsState, JobDetailsModel?>(
                                    selector: (state) =>
                                        state.jobDetailsModelObj,
                                    builder: (context, jobDetailsModelObj) {
                                      return ListView.separated(
                                          padding:
                                              getPadding(top: 25, left: 24),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(12));
                                          },
                                          itemCount: jobDetailsModelObj
                                                  ?.listdescriptionItemList
                                                  .length ??
                                              0,
                                          itemBuilder: (context, index) {
                                            ListdescriptionItemModel model =
                                                jobDetailsModelObj
                                                            ?.listdescriptionItemList[
                                                        index] ??
                                                    ListdescriptionItemModel();
                                            return ListdescriptionItemWidget(
                                                model);
                                          });
                                    })),
                            Padding(
                                padding: getPadding(top: 20, left: 24),
                                child: Text("lbl_job_description".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPlusJakartaSansBold16Bluegray900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.08)))),
                            Container(
                                width: getHorizontalSize(319),
                                margin: getMargin(
                                  left: 24,
                                  top: 13,
                                  right: 24,
                                ),
                                child: Text("msg_lorem_ipsum_dolor3".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPlusJakartaSansMedium14Gray600
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.07))))
                          ])),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: getPadding(
                              left: 24, top: 28, right: 24, bottom: 28),
                          decoration: AppDecoration.gradientGray50Gray5000,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(56),
                                    text: "lbl_apply_now".tr,
                                    margin: getMargin(bottom: 12),
                                    variant: ButtonVariant.FillGray900,
                                    shape: ButtonShape.RoundedBorder24,
                                    padding: ButtonPadding.PaddingAll17,
                                    fontStyle: ButtonFontStyle
                                        .PlusJakartaSansSemiBold16Gray50,
                                    onTap: () {
                                      onTapApplynow(context);
                                    })
                              ])))
                ]))));
  }

  onTapApplynow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.applyJobScreen,
    );
  }

  onBackPressed(BuildContext context) {
    NavigatorService.goBack();
  }
}
