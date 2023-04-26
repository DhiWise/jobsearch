import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listbag1_item_model.dart';
import 'package:e_commerce_app/presentation/notifications_general_screen/models/notifications_general_model.dart';
part 'notifications_general_event.dart';
part 'notifications_general_state.dart';

class NotificationsGeneralBloc
    extends Bloc<NotificationsGeneralEvent, NotificationsGeneralState> {
  NotificationsGeneralBloc(NotificationsGeneralState initialState)
      : super(initialState) {
    on<NotificationsGeneralInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationsGeneralInitialEvent event,
    Emitter<NotificationsGeneralState> emit,
  ) async {
    emit(state.copyWith(
        notificationsGeneralModelObj: state.notificationsGeneralModelObj
            ?.copyWith(listbag1ItemList: fillListbag1ItemList())));
  }

  List<Listbag1ItemModel> fillListbag1ItemList() {
    return List.generate(4, (index) => Listbag1ItemModel());
  }
}
