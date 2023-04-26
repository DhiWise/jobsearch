import 'package:equatable/equatable.dart';
import 'experience_item_model.dart';

// ignore: must_be_immutable
class ExperienceSettingModel extends Equatable {
  ExperienceSettingModel({this.experienceItemList = const []});

  List<ExperienceItemModel> experienceItemList;

  ExperienceSettingModel copyWith(
      {List<ExperienceItemModel>? experienceItemList}) {
    return ExperienceSettingModel(
      experienceItemList: experienceItemList ?? this.experienceItemList,
    );
  }

  @override
  List<Object?> get props => [experienceItemList];
}
