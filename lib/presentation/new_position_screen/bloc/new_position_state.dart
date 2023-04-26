// ignore_for_file: must_be_immutable

part of 'new_position_bloc.dart';

class NewPositionState extends Equatable {
  NewPositionState({
    this.titleController,
    this.employmentTypeController,
    this.companyNameController,
    this.locationController,
    this.startDateController,
    this.endDateController,
    this.jobRoleDescriptionController,
    this.newPositionModelObj,
  });

  TextEditingController? titleController;

  TextEditingController? employmentTypeController;

  TextEditingController? companyNameController;

  TextEditingController? locationController;

  TextEditingController? startDateController;

  TextEditingController? endDateController;

  TextEditingController? jobRoleDescriptionController;

  NewPositionModel? newPositionModelObj;

  @override
  List<Object?> get props => [
        titleController,
        employmentTypeController,
        companyNameController,
        locationController,
        startDateController,
        endDateController,
        jobRoleDescriptionController,
        newPositionModelObj,
      ];
  NewPositionState copyWith({
    TextEditingController? titleController,
    TextEditingController? employmentTypeController,
    TextEditingController? companyNameController,
    TextEditingController? locationController,
    TextEditingController? startDateController,
    TextEditingController? endDateController,
    TextEditingController? jobRoleDescriptionController,
    NewPositionModel? newPositionModelObj,
  }) {
    return NewPositionState(
      titleController: titleController ?? this.titleController,
      employmentTypeController:
      employmentTypeController ?? this.employmentTypeController,
      companyNameController:
      companyNameController ?? this.companyNameController,
      locationController:
      locationController ?? this.locationController,
      startDateController: startDateController ?? this.startDateController,
      endDateController: endDateController ?? this.endDateController,
      jobRoleDescriptionController:
      jobRoleDescriptionController ?? this.jobRoleDescriptionController,
      newPositionModelObj: newPositionModelObj ?? this.newPositionModelObj,
    );
  }
}
