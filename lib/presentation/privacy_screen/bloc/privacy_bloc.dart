import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:e_commerce_app/presentation/privacy_screen/models/privacy_model.dart';
part 'privacy_event.dart';
part 'privacy_state.dart';

class PrivacyBloc extends Bloc<PrivacyEvent, PrivacyState> {
  PrivacyBloc(PrivacyState initialState) : super(initialState) {
    on<PrivacyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PrivacyInitialEvent event,
    Emitter<PrivacyState> emit,
  ) async {}
}
