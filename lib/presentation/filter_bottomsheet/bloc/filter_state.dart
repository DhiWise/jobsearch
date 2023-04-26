// ignore_for_file: must_be_immutable

part of 'filter_bloc.dart';

class FilterState extends Equatable {
  FilterState({
    this.group162858Controller,
    this.filterModelObj,
  });

  TextEditingController? group162858Controller;

  FilterModel? filterModelObj;

  @override
  List<Object?> get props => [
        group162858Controller,
        filterModelObj,
      ];
  FilterState copyWith({
    TextEditingController? group162858Controller,
    FilterModel? filterModelObj,
  }) {
    return FilterState(
      group162858Controller:
          group162858Controller ?? this.group162858Controller,
      filterModelObj: filterModelObj ?? this.filterModelObj,
    );
  }
}
