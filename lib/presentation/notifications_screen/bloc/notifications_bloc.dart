import '../models/notifications_item_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:e_commerce_app/presentation/notifications_screen/models/notifications_model.dart';
part 'notifications_event.dart';
part 'notifications_state.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc(NotificationsState initialState) : super(initialState) {
    on<NotificationsInitialEvent>(_onInitialize);
    on<NotificationsItemEvent>(_notificationsItem);
  }

  _onInitialize(
    NotificationsInitialEvent event,
    Emitter<NotificationsState> emit,
  ) async {
    emit(state.copyWith(
        notificationsModelObj: state.notificationsModelObj?.copyWith(
      notificationsItemList: fillNotificationsItemList(),
    )));
  }

  _notificationsItem(
    NotificationsItemEvent event,
    Emitter<NotificationsState> emit,
  ) {
    List<NotificationsItemModel> newList = List<NotificationsItemModel>.from(
        state.notificationsModelObj!.notificationsItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelectedSwitch: event.isSelectedSwitch,
    );
    emit(state.copyWith(
        notificationsModelObj: state.notificationsModelObj
            ?.copyWith(notificationsItemList: newList)));
  }

  List<NotificationsItemModel> fillNotificationsItemList() {
    return List.generate(4, (index) => NotificationsItemModel());
  }
}
