import 'package:equatable/equatable.dart';
import 'message_item_model.dart';

// ignore: must_be_immutable
class MessageModel extends Equatable {
  MessageModel({this.messageItemList = const []});

  List<MessageItemModel> messageItemList;

  MessageModel copyWith({List<MessageItemModel>? messageItemList}) {
    return MessageModel(
      messageItemList: messageItemList ?? this.messageItemList,
    );
  }

  @override
  List<Object?> get props => [messageItemList];
}
