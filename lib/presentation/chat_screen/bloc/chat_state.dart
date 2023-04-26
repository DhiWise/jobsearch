// ignore_for_file: must_be_immutable

part of 'chat_bloc.dart';

class ChatState extends Equatable {
  ChatState({
    this.messageController,
    this.chatModelObj,
  });

  TextEditingController? messageController;

  ChatModel? chatModelObj;

  @override
  List<Object?> get props => [
        messageController,
        chatModelObj,
      ];
  ChatState copyWith({
    TextEditingController? messageController,
    ChatModel? chatModelObj,
  }) {
    return ChatState(
      messageController: messageController ?? this.messageController,
      chatModelObj: chatModelObj ?? this.chatModelObj,
    );
  }
}
