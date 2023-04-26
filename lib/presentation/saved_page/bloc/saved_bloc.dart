import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/saved_item_model.dart';
import 'package:e_commerce_app/presentation/saved_page/models/saved_model.dart';
part 'saved_event.dart';
part 'saved_state.dart';

class SavedBloc extends Bloc<SavedEvent, SavedState> {
  SavedBloc(SavedState initialState) : super(initialState) {
    on<SavedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SavedInitialEvent event,
    Emitter<SavedState> emit,
  ) async {
    emit(state.copyWith(
        savedModelObj: state.savedModelObj?.copyWith(
      savedItemList: fillSavedItemList(),
    )));
  }

  List<SavedItemModel> fillSavedItemList() {
    return List.generate(4, (index) => SavedItemModel());
  }
}
