import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:e_commerce_app/presentation/select_a_country_screen/models/select_a_country_model.dart';
part 'select_a_country_event.dart';
part 'select_a_country_state.dart';

class SelectACountryBloc
    extends Bloc<SelectACountryEvent, SelectACountryState> {
  SelectACountryBloc(SelectACountryState initialState) : super(initialState) {
    on<SelectACountryInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<SelectACountryState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  List<String> fillRadioList() {
    return [
      "lbl_afghanistan",
      "lbl_albania",
      "lbl_algeria",
      "lbl_andorra",
      "lbl_angola",
      "msg_antigua_and_barbuda",
      "lbl_argentina",
      "lbl_argentina",
      "lbl_armenia",
      "lbl_australia",
      "lbl_austria",
      "lbl_azerbaijan",
      "lbl_azerbaijan"
    ];
  }

  _onInitialize(
    SelectACountryInitialEvent event,
    Emitter<SelectACountryState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      radioGroup: "",
    ));
    emit(state.copyWith(
        selectACountryModelObj: state.selectACountryModelObj?.copyWith(
      radioList: fillRadioList(),
    )));
  }
}
