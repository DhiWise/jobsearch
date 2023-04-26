// ignore_for_file: must_be_immutable

part of 'apply_job_bloc.dart';

@immutable
abstract class ApplyJobEvent extends Equatable {}

class ApplyJobInitialEvent extends ApplyJobEvent {
  @override
  List<Object?> get props => [];
}
