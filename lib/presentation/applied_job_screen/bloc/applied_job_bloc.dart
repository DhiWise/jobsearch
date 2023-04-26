import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listwallet2_item_model.dart';
import '../models/listdescription2_item_model.dart';
import 'package:e_commerce_app/presentation/applied_job_screen/models/applied_job_model.dart';
part 'applied_job_event.dart';
part 'applied_job_state.dart';

class AppliedJobBloc extends Bloc<AppliedJobEvent, AppliedJobState> {
  AppliedJobBloc(AppliedJobState initialState) : super(initialState) {
    on<AppliedJobInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AppliedJobInitialEvent event,
    Emitter<AppliedJobState> emit,
  ) async {
    emit(state.copyWith(
        appliedJobModelObj: state.appliedJobModelObj?.copyWith(
      listwallet2ItemList: fillListwallet2ItemList(),
      listdescription2ItemList: fillListdescription2ItemList(),
    )));
  }

  List<Listwallet2ItemModel> fillListwallet2ItemList() {
    return List.generate(3, (index) => Listwallet2ItemModel());
  }

  List<Listdescription2ItemModel> fillListdescription2ItemList() {
    return List.generate(3, (index) => Listdescription2ItemModel());
  }
}
