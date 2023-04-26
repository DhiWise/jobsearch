// ignore_for_file: must_be_immutable

part of 'new_position_bloc.dart';

@immutable
abstract class NewPositionEvent extends Equatable {}

class NewPositionInitialEvent extends NewPositionEvent {
  @override
  List<Object?> get props => [];
}
