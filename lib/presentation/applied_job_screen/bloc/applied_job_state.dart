// ignore_for_file: must_be_immutable

part of 'applied_job_bloc.dart';

class AppliedJobState extends Equatable {
  AppliedJobState({this.appliedJobModelObj});

  AppliedJobModel? appliedJobModelObj;

  @override
  List<Object?> get props => [
        appliedJobModelObj,
      ];
  AppliedJobState copyWith({AppliedJobModel? appliedJobModelObj}) {
    return AppliedJobState(
      appliedJobModelObj: appliedJobModelObj ?? this.appliedJobModelObj,
    );
  }
}
