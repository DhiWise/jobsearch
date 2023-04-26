// ignore_for_file: must_be_immutable

part of 'home_bloc.dart';

@immutable
abstract class HomeEvent extends Equatable {}

class HomeInitialEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class CreateListEvent extends HomeEvent {
  CreateListEvent({required this.onCreateListEventError});

  Function onCreateListEventError;

  @override
  List<Object?> get props => [
        onCreateListEventError,
      ];
}
