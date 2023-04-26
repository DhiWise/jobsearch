import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:e_commerce_app/presentation/logout_popup_dialog/models/logout_popup_model.dart';
part 'logout_popup_event.dart';
part 'logout_popup_state.dart';

class LogoutPopupBloc extends Bloc<LogoutPopupEvent, LogoutPopupState> {
  LogoutPopupBloc(LogoutPopupState initialState) : super(initialState) {
    on<LogoutPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LogoutPopupInitialEvent event,
    Emitter<LogoutPopupState> emit,
  ) async {}
}
