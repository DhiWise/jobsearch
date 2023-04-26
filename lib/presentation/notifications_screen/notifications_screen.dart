import '../notifications_screen/widgets/notifications_item_widget.dart';
import 'bloc/notifications_bloc.dart';
import 'models/notifications_item_model.dart';
import 'models/notifications_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationsBloc>(
      create: (context) => NotificationsBloc(NotificationsState(
        notificationsModelObj: NotificationsModel(),
      ))
        ..add(NotificationsInitialEvent()),
      child: NotificationsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA70002,
        appBar: CustomAppBar(
          height: getVerticalSize(
            50,
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
              bottom: 13,
            ),
            onTap: () {
              onBackPressed(context);
            },
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_notifications".tr,
          ),
        ),
        body: Container(
          width: getHorizontalSize(
            327,
          ),
          margin: getMargin(
            left: 24,
            top: 30,
            right: 24,
            bottom: 5,
          ),
          padding: getPadding(
            left: 16,
            top: 15,
            right: 16,
            bottom: 15,
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
                  top: 1,
                ),
                child: Text(
                  "msg_messages_notifications".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium12,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    top: 17,
                  ),
                  child: BlocSelector<NotificationsBloc, NotificationsState,
                      NotificationsModel?>(
                    selector: (state) => state.notificationsModelObj,
                    builder: (context, notificationsModelObj) {
                      return ListView.separated(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return Padding(
                            padding: getPadding(
                              top: 10.5,
                              bottom: 10.5,
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
                        itemCount: notificationsModelObj
                                ?.notificationsItemList.length ??
                            0,
                        itemBuilder: (context, index) {
                          NotificationsItemModel model = notificationsModelObj
                                  ?.notificationsItemList[index] ??
                              NotificationsItemModel();
                          return NotificationsItemWidget(
                            model,
                            changeSwitch: (value) {
                              context.read<NotificationsBloc>().add(
                                  NotificationsItemEvent(
                                      index: index, isSelectedSwitch: value));
                            },
                          );
                        },
                      );
                    },
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
