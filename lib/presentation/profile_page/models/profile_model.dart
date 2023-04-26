import 'package:equatable/equatable.dart';
import 'chipviewskills_item_model.dart';
import 'profile_item_model.dart';

// ignore: must_be_immutable
class ProfileModel extends Equatable {
  ProfileModel(
      {this.chipviewskillsItemList = const [],
      this.profileItemList = const []});

  List<ChipviewskillsItemModel> chipviewskillsItemList;

  List<ProfileItemModel> profileItemList;

  ProfileModel copyWith(
      {List<ChipviewskillsItemModel>? chipviewskillsItemList,
      List<ProfileItemModel>? profileItemList}) {
    return ProfileModel(
      chipviewskillsItemList:
          chipviewskillsItemList ?? this.chipviewskillsItemList,
      profileItemList: profileItemList ?? this.profileItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewskillsItemList, profileItemList];
}
