// ignore_for_file: must_be_immutable

part of 'chat_bloc.dart';

@immutable
abstract class ChatEvent extends Equatable {}

class ChatInitialEvent extends ChatEvent {
  @override
  List<Object?> get props => [];
}
