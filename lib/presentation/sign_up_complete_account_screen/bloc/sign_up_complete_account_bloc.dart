import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:e_commerce_app/presentation/sign_up_complete_account_screen/models/sign_up_complete_account_model.dart';
import 'package:e_commerce_app/data/models/register/post_register_resp.dart';
import 'package:e_commerce_app/data/models/register/post_register_req.dart';
import 'dart:async';
import 'package:e_commerce_app/data/repository/repository.dart';
part 'sign_up_complete_account_event.dart';
part 'sign_up_complete_account_state.dart';

class SignUpCompleteAccountBloc
    extends Bloc<SignUpCompleteAccountEvent, SignUpCompleteAccountState> {
  SignUpCompleteAccountBloc(SignUpCompleteAccountState initialState)
      : super(initialState) {
    on<SignUpCompleteAccountInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<CreateRegisterEvent>(_callCreateRegister);
  }

  final _repository = Repository();

  var postRegisterResp = PostRegisterResp();

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<SignUpCompleteAccountState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    SignUpCompleteAccountInitialEvent event,
    Emitter<SignUpCompleteAccountState> emit,
  ) async {
    emit(state.copyWith(
        firstnameController: TextEditingController(),
        lastnameController: TextEditingController(),
        passwordController: TextEditingController(),
        emailController: TextEditingController(),
        isShowPassword: true));
  }

  FutureOr<void> _callCreateRegister(
    CreateRegisterEvent event,
    Emitter<SignUpCompleteAccountState> emit,
  ) async {
    var postRegisterReq = PostRegisterReq(
      username: state.firstnameController?.text,
      password: state.passwordController?.text,
      email: state.emailController?.text,
    );
    await _repository.createRegister(
      headers: {
        'Content-Type': 'application/json',
      },
      requestData: postRegisterReq.toJson(),
    ).then((value) async {
      postRegisterResp = value;
      _onCreateRegisterSuccess(value, emit);
      event.onCreateRegisterEventSuccess.call();
    }).onError((error, stackTrace) {
      //implement error call
      _onCreateRegisterError();
      event.onCreateRegisterEventError.call();
    });
  }

  void _onCreateRegisterSuccess(
    PostRegisterResp resp,
    Emitter<SignUpCompleteAccountState> emit,
  ) {}
  void _onCreateRegisterError() {
    //implement error method body...
  }
}
