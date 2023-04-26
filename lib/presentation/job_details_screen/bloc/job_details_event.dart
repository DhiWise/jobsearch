// ignore_for_file: must_be_immutable

part of 'job_details_bloc.dart';

@immutable
abstract class JobDetailsEvent extends Equatable {}

class JobDetailsInitialEvent extends JobDetailsEvent {
  @override
  List<Object?> get props => [];
}
