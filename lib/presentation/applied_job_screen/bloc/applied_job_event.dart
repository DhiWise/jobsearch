// ignore_for_file: must_be_immutable

part of 'applied_job_bloc.dart';

@immutable
abstract class AppliedJobEvent extends Equatable {}

class AppliedJobInitialEvent extends AppliedJobEvent {
  @override
  List<Object?> get props => [];
}
