import 'package:flutter_bloc/flutter_bloc.dart';

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
        } else {
          emit(ApiFailState(no_internet_msg));
        }
      });
    });
  }
}
