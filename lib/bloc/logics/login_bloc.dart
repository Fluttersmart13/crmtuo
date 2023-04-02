import 'dart:convert';
import 'dart:developer';

import 'package:crmtuo/model/LoginRequest.dart';
import 'package:crmtuo/repository/ApiRepository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/loginResponse.dart';
import '../../utility/helper.dart';
import '../../utility/internet_connectivity.dart';
import '../events/login_event.dart';
import '../states/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(InitialState()) {
    on<TextChangeEvent>((event, emit) => {
          if (event.username == "")
            {emit(ErrorState("Please enter username"))}
          else if (event.password.isEmpty)
            {emit(ErrorState("Please enter password"))}
          else
            {emit(ValidState())}
        });

    on<SubmittedEvent>((event, emit) async {
      await InternetConnectivityCheck.getInstance()
          .chkInternetConnectivity()
          .then((value) async {
        if (value!) {
          emit(LoadingState());

          try {
            LoginRequest loginRequest = LoginRequest(
                provider: "EMAIL",
                username: "vikasthombare009@gmail.com",
                password: "Vikas@908",
                twoFactorMethod: null);

            LoginResponse? loginResponse =
                await ApiRepository.getInstance().loginApi(loginRequest);
            emit(ApiSuccessState());
            print(jsonEncode(loginResponse));
          } on DioError catch (e) {
            log("data$e");
            String error =
                InternetConnectivityCheck.getInstance().getNetworkError(e);
            emit(ApiFailState(error));
          }
        } else {
          emit(ApiFailState(no_internet_msg));
        }
      });
    });
  }
}
