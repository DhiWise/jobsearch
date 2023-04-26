import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:e_commerce_app/presentation/apply_job_popup_dialog/models/apply_job_popup_model.dart';
part 'apply_job_popup_event.dart';
part 'apply_job_popup_state.dart';

class ApplyJobPopupBloc extends Bloc<ApplyJobPopupEvent, ApplyJobPopupState> {
  ApplyJobPopupBloc(ApplyJobPopupState initialState) : super(initialState) {
    on<ApplyJobPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ApplyJobPopupInitialEvent event,
    Emitter<ApplyJobPopupState> emit,
  ) async {}
}
