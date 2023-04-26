// ignore_for_file: must_be_immutable

part of 'experience_setting_bloc.dart';

@immutable
abstract class ExperienceSettingEvent extends Equatable {}

class ExperienceSettingInitialEvent extends ExperienceSettingEvent {
  @override
  List<Object?> get props => [];
}
