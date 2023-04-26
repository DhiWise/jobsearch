import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:e_commerce_app/presentation/apply_job_screen/models/apply_job_model.dart';
part 'apply_job_event.dart';
part 'apply_job_state.dart';

class ApplyJobBloc extends Bloc<ApplyJobEvent, ApplyJobState> {
  ApplyJobBloc(ApplyJobState initialState) : super(initialState) {
    on<ApplyJobInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ApplyJobInitialEvent event,
    Emitter<ApplyJobState> emit,
  ) async {
    emit(state.copyWith(
        fullNameController: TextEditingController(),));
  }
}
