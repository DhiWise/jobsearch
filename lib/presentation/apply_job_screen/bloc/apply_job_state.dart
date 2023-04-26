// ignore_for_file: must_be_immutable

part of 'apply_job_bloc.dart';

class ApplyJobState extends Equatable {
  ApplyJobState({
    this.applyJobModelObj,
    this.fullNameController,
    this.emailController,
    this.websiteController,
  });

  ApplyJobModel? applyJobModelObj;
  TextEditingController? fullNameController;

  TextEditingController? emailController;
  TextEditingController? websiteController;

  @override
  List<Object?> get props => [
        applyJobModelObj,
        fullNameController,
        emailController,
    websiteController,
      ];

  ApplyJobState copyWith({
    ApplyJobModel? applyJobModelObj,
    TextEditingController? fullNameController,
    TextEditingController? emailController,
    TextEditingController? websiteController,
  }) {
    return ApplyJobState(
      applyJobModelObj: applyJobModelObj ?? this.applyJobModelObj,
      fullNameController: fullNameController ?? this.fullNameController,
      emailController: emailController ?? this.emailController,
      websiteController: websiteController ?? this.websiteController,
    );
  }
}
