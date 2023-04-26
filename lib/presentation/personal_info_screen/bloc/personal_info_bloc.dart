import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:e_commerce_app/presentation/personal_info_screen/models/personal_info_model.dart';
import 'package:e_commerce_app/data/models/updateProfile/put_update_profile_resp.dart';
import 'package:e_commerce_app/data/models/updateProfile/put_update_profile_req.dart';
import 'dart:async';
import 'package:e_commerce_app/data/repository/repository.dart';
part 'personal_info_event.dart';
part 'personal_info_state.dart';

class PersonalInfoBloc extends Bloc<PersonalInfoEvent, PersonalInfoState> {
  PersonalInfoBloc(PersonalInfoState initialState) : super(initialState) {
    on<PersonalInfoInitialEvent>(_onInitialize);
    on<UpdateUpdateProfileEvent>(_callUpdateUpdateProfile);
  }

  final _repository = Repository();

  var putUpdateProfileResp = PutUpdateProfileResp();

  _onInitialize(
    PersonalInfoInitialEvent event,
    Emitter<PersonalInfoState> emit,
  ) async {
    emit(state.copyWith(
        firstnameController: TextEditingController(),
        lastnameController: TextEditingController(),
        emailController: TextEditingController(),
        mobilenoController: TextEditingController(),
        locationController: TextEditingController()));
  }

  FutureOr<void> _callUpdateUpdateProfile(
    UpdateUpdateProfileEvent event,
    Emitter<PersonalInfoState> emit,
  ) async {
    var putUpdateProfileReq = PutUpdateProfileReq(
      name: state.firstnameController?.text,
    );
    await _repository.updateUpdateProfile(
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzYTNmOTI0NTNjODViYzEyNjU4ZjNiZSIsInVzZXJuYW1lIjoiSnVkZ2VfQ3JvbmluIiwiaWF0IjoxNjcxNjk3MTcxfQ.hbZLKSsS6Mdj1ndhAf4rm_5we4iWYvKY1VPSo51sQRM',
        'Content-Type': 'application/json',
      },
      requestData: putUpdateProfileReq.toJson(),
    ).then((value) async {
      putUpdateProfileResp = value;
      _onUpdateUpdateProfileSuccess(value, emit);
      event.onUpdateUpdateProfileEventSuccess.call();
    }).onError((error, stackTrace) {
      //implement error call
      _onUpdateUpdateProfileError();
      event.onUpdateUpdateProfileEventError.call();
    });
  }

  void _onUpdateUpdateProfileSuccess(
    PutUpdateProfileResp resp,
    Emitter<PersonalInfoState> emit,
  ) {}
  void _onUpdateUpdateProfileError() {
    //implement error method body...
  }
}
