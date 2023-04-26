import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listwallet1_item_model.dart';
import '../models/listdescription1_item_model.dart';
import 'package:e_commerce_app/presentation/saved_detail_job_screen/models/saved_detail_job_model.dart';
part 'saved_detail_job_event.dart';
part 'saved_detail_job_state.dart';

class SavedDetailJobBloc
    extends Bloc<SavedDetailJobEvent, SavedDetailJobState> {
  SavedDetailJobBloc(SavedDetailJobState initialState) : super(initialState) {
    on<SavedDetailJobInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SavedDetailJobInitialEvent event,
    Emitter<SavedDetailJobState> emit,
  ) async {
    emit(state.copyWith(
        savedDetailJobModelObj: state.savedDetailJobModelObj?.copyWith(
            listwallet1ItemList: fillListwallet1ItemList(),
            listdescription1ItemList: fillListdescription1ItemList())));
  }

  List<Listwallet1ItemModel> fillListwallet1ItemList() {
    return List.generate(3, (index) => Listwallet1ItemModel());
  }

  List<Listdescription1ItemModel> fillListdescription1ItemList() {
    return List.generate(3, (index) => Listdescription1ItemModel());
  }
}
