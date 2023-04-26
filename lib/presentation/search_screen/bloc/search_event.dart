// ignore_for_file: must_be_immutable

part of 'search_bloc.dart';

@immutable
abstract class SearchEvent extends Equatable {}

class SearchInitialEvent extends SearchEvent {
  @override
  List<Object?> get props => [];
}
