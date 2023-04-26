import '../models/chipviewjobs_item_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:e_commerce_app/presentation/filter_bottomsheet/models/filter_model.dart';
part 'filter_event.dart';
part 'filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc(FilterState initialState) : super(initialState) {
    on<FilterInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<FilterState> emit,
  ) {
    List<ChipviewjobsItemModel> newList = List<ChipviewjobsItemModel>.from(
        state.filterModelObj!.chipviewjobsItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        filterModelObj:
            state.filterModelObj?.copyWith(chipviewjobsItemList: newList)));
  }

  List<ChipviewjobsItemModel> fillChipviewjobsItemList() {
    return List.generate(2, (index) => ChipviewjobsItemModel());
  }

  _onInitialize(
    FilterInitialEvent event,
    Emitter<FilterState> emit,
  ) async {
    emit(state.copyWith(group162858Controller: TextEditingController()));
    emit(state.copyWith(
        filterModelObj: state.filterModelObj
            ?.copyWith(chipviewjobsItemList: fillChipviewjobsItemList())));
  }
}
