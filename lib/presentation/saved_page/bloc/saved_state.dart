// ignore_for_file: must_be_immutable

part of 'saved_bloc.dart';

class SavedState extends Equatable {
  SavedState({this.savedModelObj});

  SavedModel? savedModelObj;

  @override
  List<Object?> get props => [
        savedModelObj,
      ];
  SavedState copyWith({SavedModel? savedModelObj}) {
    return SavedState(
      savedModelObj: savedModelObj ?? this.savedModelObj,
    );
  }
}
