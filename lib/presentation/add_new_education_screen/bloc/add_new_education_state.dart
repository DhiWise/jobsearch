// ignore_for_file: must_be_immutable

part of 'add_new_education_bloc.dart';

class AddNewEducationState extends Equatable {
  AddNewEducationState({
    this.schoolController,
    this.filedOfStudyController,
    this.startDateController,
    this.endDateController,
    this.gradeController,
    this.descriptionController,
    this.selectedDropDownValue,
    this.addNewEducationModelObj,
  });

  TextEditingController? schoolController;

  TextEditingController? filedOfStudyController;

  TextEditingController? startDateController;

  TextEditingController? endDateController;

  TextEditingController? gradeController;

  TextEditingController? descriptionController;

  SelectionPopupModel? selectedDropDownValue;

  AddNewEducationModel? addNewEducationModelObj;

  @override
  List<Object?> get props => [
        schoolController,
        filedOfStudyController,
        startDateController,
        endDateController,
        gradeController,
        descriptionController,
        selectedDropDownValue,
        addNewEducationModelObj,
      ];

  AddNewEducationState copyWith({
    TextEditingController? schoolController,
    TextEditingController? filedOfStudyController,
    TextEditingController? startDateController,
    TextEditingController? endDateController,
    TextEditingController? gradeController,
    TextEditingController? descriptionController,
    SelectionPopupModel? selectedDropDownValue,
    AddNewEducationModel? addNewEducationModelObj,
  }) {
    return AddNewEducationState(
      schoolController: schoolController ?? this.schoolController,
      filedOfStudyController:
          filedOfStudyController ?? this.filedOfStudyController,
      startDateController: startDateController ?? this.startDateController,
      endDateController: endDateController ?? this.endDateController,
      gradeController: gradeController ?? this.gradeController,
      descriptionController:
          descriptionController ?? this.descriptionController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      addNewEducationModelObj:
          addNewEducationModelObj ?? this.addNewEducationModelObj,
    );
  }
}
