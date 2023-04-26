import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:e_commerce_app/presentation/add_new_education_screen/models/add_new_education_model.dart';
part 'add_new_education_event.dart';
part 'add_new_education_state.dart';

class AddNewEducationBloc
    extends Bloc<AddNewEducationEvent, AddNewEducationState> {
  AddNewEducationBloc(AddNewEducationState initialState) : super(initialState) {
    on<AddNewEducationInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<AddNewEducationState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  _onInitialize(
    AddNewEducationInitialEvent event,
    Emitter<AddNewEducationState> emit,
  ) async {
    emit(state.copyWith(
        schoolController: TextEditingController(),
        filedOfStudyController: TextEditingController(),
        startDateController: TextEditingController(),
        endDateController: TextEditingController(),
        gradeController: TextEditingController(),
        descriptionController: TextEditingController()));
    emit(state.copyWith(
        addNewEducationModelObj: state.addNewEducationModelObj
            ?.copyWith(dropdownItemList: fillDropdownItemList())));
  }
}
