import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:e_commerce_app/presentation/login_screen/models/login_model.dart';
import 'package:e_commerce_app/data/models/login/post_login_resp.dart';
import 'package:e_commerce_app/data/models/login/post_login_req.dart';
import 'dart:async';
import 'package:e_commerce_app/data/repository/repository.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(LoginState initialState) : super(initialState) {
    on<LoginInitialEvent>(_onInitialize);
    on<CreateLoginEvent>(_callCreateLogin);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  final _repository = Repository();

  var postLoginResp = PostLoginResp();

  _onInitialize(
    LoginInitialEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(text: 'aaabbb@gmail.com'),
      passwordController: TextEditingController(text: 'Abc@12345'),
    ));
  }

  FutureOr<void> _callCreateLogin(
    CreateLoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    var postLoginReq = PostLoginReq(
      username: state.emailController!.text,
      password: state.passwordController!.text,
    );
    await _repository.createLogin(
      headers: {
        'Content-Type': 'application/json',
      },
      requestData: postLoginReq.toJson(),
    ).then((value) async {
      postLoginResp = value;
      _onCreateLoginSuccess(value, emit);
      event.onCreateLoginEventSuccess.call();
    }).onError((error, stackTrace) {
      //implement error call
      _onCreateLoginError();
      event.onCreateLoginEventError.call();
    });
  }

  void _onCreateLoginSuccess(
    PostLoginResp resp,
    Emitter<LoginState> emit,
  ) {
    PrefUtils().setUserName(resp.data!.username!.toString());
    PrefUtils().setUserEmail(resp.data!.email!.toString());
    PrefUtils().setUserToken(resp.data!.token!.toString());
    emit(
      state.copyWith(
        loginModelObj: state.loginModelObj?.copyWith(),
      ),
    );
  }

  void _onCreateLoginError() {
    //implement error method body...
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }
}
