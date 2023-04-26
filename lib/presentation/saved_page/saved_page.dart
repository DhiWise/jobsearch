import '../saved_page/widgets/saved_item_widget.dart';
import 'bloc/saved_bloc.dart';
import 'models/saved_item_model.dart';
import 'models/saved_model.dart';
import 'package:e_commerce_app/core/app_export.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SavedPage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SavedBloc>(
      create: (context) => SavedBloc(SavedState(
        savedModelObj: SavedModel(),
      ))
        ..add(SavedInitialEvent()),
      child: SavedPage(),
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
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_saved".tr,
          ),
        ),
        body: Padding(
          padding: getPadding(
            left: 24,
            top: 30,
            right: 24,
          ),
          child: BlocSelector<SavedBloc, SavedState, SavedModel?>(
            selector: (state) => state.savedModelObj,
            builder: (context, savedModelObj) {
              return ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: getVerticalSize(
                      12,
                    ),
                  );
                },
                itemCount: savedModelObj?.savedItemList.length ?? 0,
                itemBuilder: (context, index) {
                  SavedItemModel model =
                      savedModelObj?.savedItemList[index] ?? SavedItemModel();
                  return SavedItemWidget(
                    model,
                    onTapListItem: () {
                      onTapListItem(context);
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  onTapListItem(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.savedDetailJobScreen);
  }
}
