// ignore_for_file: must_be_immutable

part of 'saved_bloc.dart';

@immutable
abstract class SavedEvent extends Equatable {}

class SavedInitialEvent extends SavedEvent {
  @override
  List<Object?> get props => [];
}
