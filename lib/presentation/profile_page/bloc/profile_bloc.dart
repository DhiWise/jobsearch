import '../models/chipviewskills_item_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/profile_item_model.dart';
import 'package:e_commerce_app/presentation/profile_page/models/profile_model.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(ProfileState initialState) : super(initialState) {
    on<ProfileInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<ProfileState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<ProfileState> emit,
  ) {
    List<ChipviewskillsItemModel> newList = List<ChipviewskillsItemModel>.from(
        state.profileModelObj!.chipviewskillsItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        profileModelObj:
            state.profileModelObj?.copyWith(chipviewskillsItemList: newList)));
  }

  List<ChipviewskillsItemModel> fillChipviewskillsItemList() {
    return List.generate(8, (index) => ChipviewskillsItemModel());
  }

  List<ProfileItemModel> fillProfileItemList() {
    return List.generate(3, (index) => ProfileItemModel());
  }

  _onInitialize(
    ProfileInitialEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(isCheckbox: false));
    emit(state.copyWith(
        profileModelObj: state.profileModelObj?.copyWith(
            chipviewskillsItemList: fillChipviewskillsItemList(),
            profileItemList: fillProfileItemList())));
  }
}
