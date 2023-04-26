// ignore_for_file: must_be_immutable

part of 'apply_job_popup_bloc.dart';

@immutable
abstract class ApplyJobPopupEvent extends Equatable {}

class ApplyJobPopupInitialEvent extends ApplyJobPopupEvent {
  @override
  List<Object?> get props => [];
}
