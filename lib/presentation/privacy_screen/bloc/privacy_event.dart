// ignore_for_file: must_be_immutable

part of 'privacy_bloc.dart';

@immutable
abstract class PrivacyEvent extends Equatable {}

class PrivacyInitialEvent extends PrivacyEvent {
  @override
  List<Object?> get props => [];
}
