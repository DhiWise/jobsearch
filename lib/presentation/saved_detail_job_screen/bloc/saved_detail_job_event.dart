// ignore_for_file: must_be_immutable

part of 'saved_detail_job_bloc.dart';

@immutable
abstract class SavedDetailJobEvent extends Equatable {}

class SavedDetailJobInitialEvent extends SavedDetailJobEvent {
  @override
  List<Object?> get props => [];
}
