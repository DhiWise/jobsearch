import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listfavorite_item_model.dart';
import 'package:e_commerce_app/presentation/notifications_my_proposals_screen/models/notifications_my_proposals_model.dart';
part 'notifications_my_proposals_event.dart';
part 'notifications_my_proposals_state.dart';

class NotificationsMyProposalsBloc
    extends Bloc<NotificationsMyProposalsEvent, NotificationsMyProposalsState> {
  NotificationsMyProposalsBloc(NotificationsMyProposalsState initialState)
      : super(initialState) {
    on<NotificationsMyProposalsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationsMyProposalsInitialEvent event,
    Emitter<NotificationsMyProposalsState> emit,
  ) async {
    emit(state.copyWith(
        notificationsMyProposalsModelObj: state.notificationsMyProposalsModelObj
            ?.copyWith(listfavoriteItemList: fillListfavoriteItemList())));
  }

  List<ListfavoriteItemModel> fillListfavoriteItemList() {
    return List.generate(3, (index) => ListfavoriteItemModel());
  }
}
