// ignore_for_file: must_be_immutable

part of 'apply_job_popup_bloc.dart';

class ApplyJobPopupState extends Equatable {
  ApplyJobPopupState({this.applyJobPopupModelObj});

  ApplyJobPopupModel? applyJobPopupModelObj;

  @override
  List<Object?> get props => [
        applyJobPopupModelObj,
      ];
  ApplyJobPopupState copyWith({ApplyJobPopupModel? applyJobPopupModelObj}) {
    return ApplyJobPopupState(
      applyJobPopupModelObj:
          applyJobPopupModelObj ?? this.applyJobPopupModelObj,
    );
  }
}
