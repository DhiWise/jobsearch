import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/message_item_model.dart';
import 'package:e_commerce_app/presentation/message_page/models/message_model.dart';
part 'message_event.dart';
part 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc(MessageState initialState) : super(initialState) {
    on<MessageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MessageInitialEvent event,
    Emitter<MessageState> emit,
  ) async {
    emit(state.copyWith(
        messageModelObj: state.messageModelObj
            ?.copyWith(messageItemList: fillMessageItemList())));
  }

  List<MessageItemModel> fillMessageItemList() {
    return List.generate(4, (index) => MessageItemModel());
  }
}
