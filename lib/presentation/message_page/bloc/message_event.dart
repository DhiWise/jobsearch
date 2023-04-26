// ignore_for_file: must_be_immutable

part of 'message_bloc.dart';

@immutable
abstract class MessageEvent extends Equatable {}

class MessageInitialEvent extends MessageEvent {
  @override
  List<Object?> get props => [];
}
