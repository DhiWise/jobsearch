// ignore_for_file: must_be_immutable

part of 'job_details_bloc.dart';

class JobDetailsState extends Equatable {
  JobDetailsState({this.jobDetailsModelObj});

  JobDetailsModel? jobDetailsModelObj;

  @override
  List<Object?> get props => [
        jobDetailsModelObj,
      ];
  JobDetailsState copyWith({JobDetailsModel? jobDetailsModelObj}) {
    return JobDetailsState(
      jobDetailsModelObj: jobDetailsModelObj ?? this.jobDetailsModelObj,
    );
  }
}
