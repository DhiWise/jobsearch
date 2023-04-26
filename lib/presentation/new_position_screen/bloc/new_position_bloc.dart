import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:e_commerce_app/presentation/new_position_screen/models/new_position_model.dart';
part 'new_position_event.dart';
part 'new_position_state.dart';

class NewPositionBloc extends Bloc<NewPositionEvent, NewPositionState> {
  NewPositionBloc(NewPositionState initialState) : super(initialState) {
    on<NewPositionInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewPositionInitialEvent event,
    Emitter<NewPositionState> emit,
  ) async {
    emit(state.copyWith(
        titleController: TextEditingController(),
        employmentTypeController: TextEditingController(),
        companyNameController: TextEditingController(),
        locationController: TextEditingController(),
        startDateController: TextEditingController(),
        endDateController: TextEditingController(),
        jobRoleDescriptionController: TextEditingController()));
  }
}
