// ignore_for_file: must_be_immutable

part of 'experience_setting_bloc.dart';

class ExperienceSettingState extends Equatable {
  ExperienceSettingState({this.experienceSettingModelObj});

  ExperienceSettingModel? experienceSettingModelObj;

  @override
  List<Object?> get props => [
        experienceSettingModelObj,
      ];
  ExperienceSettingState copyWith(
      {ExperienceSettingModel? experienceSettingModelObj}) {
    return ExperienceSettingState(
      experienceSettingModelObj:
          experienceSettingModelObj ?? this.experienceSettingModelObj,
    );
  }
}
