// ignore_for_file: must_be_immutable

part of 'notifications_my_proposals_bloc.dart';

@immutable
abstract class NotificationsMyProposalsEvent extends Equatable {}

class NotificationsMyProposalsInitialEvent
    extends NotificationsMyProposalsEvent {
  @override
  List<Object?> get props => [];
}
