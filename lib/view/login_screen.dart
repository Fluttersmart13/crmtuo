import 'package:crmtuo/routes/router_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/events/login_event.dart';
import '../bloc/logics/login_bloc.dart';
import '../bloc/states/login_state.dart';
import '../utility/helper.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController username = TextEditingController();

  TextEditingController password = TextEditingController();

  String deviceid = "";
  var _isPasswordVisible = false;
  FocusNode passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Safety Login"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            margin: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                    height: 100,
                    width: 100,
                    child: Image(image: AssetImage("assets/images/logo.png"))),
                SizedBox(height: size.height * 0.03),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: TextField(
                    onChanged: (value) {
                      BlocProvider.of<LoginBloc>(context)
                          .add(TextChangeEvent(username.text, password.text));
                    },
                    controller: username,
                    cursorColor: primaryColor,
                    decoration: const InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: primaryColor,
                      ),
                      hintText: "username",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: TextFormField(
                    controller: password,
                    focusNode: passwordFocusNode,
                    obscureText: !_isPasswordVisible,
                    onChanged: (value) {
                      BlocProvider.of<LoginBloc>(context).add(TextChangeEvent(
                          username.text.trim(), password.text.trim()));
                    },
                    cursorColor: primaryColor,
                    decoration: InputDecoration(
                      icon: const Icon(
                        Icons.lock,
                        color: primaryColor,
                      ),
                      suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: _showHidePassword),
                      hintText: "Password",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    if (state is ErrorState) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        width: size.width * 0.8,
                        child: Text(
                          state.errorMessage,
                          style: const TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
                BlocConsumer<LoginBloc, LoginState>(
                  listener: (context, state) {
                    if (state is ApiSuccessState) {
                      Navigator.pushNamedAndRemoveUntil(
                          context, routeHome, (Route<dynamic> route) => false,
                          arguments: 0);
                    } else if (state is ApiFailState) {
                      showSnackBarError(context, state.errorMessage);
                    }
                  },
                  builder: (context, state) {
                    if (state is LoadingState) {
                      return const CircularProgressIndicator(
                        color: primaryColor,
                      );
                    }
                    if (state is ApiFailState) {
                      BlocProvider.of<LoginBloc>(context).add(TextChangeEvent(
                          username.text.trim(), password.text.trim()));
                      return buildInkWellLoginButton(state, context, size);
                    }
                    return buildInkWellLoginButton(state, context, size);
                  },
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: () {
                    //showDeviceDialog(context);
                  },
                  child: const Text(
                    'Know your Unique id',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InkWell buildInkWellLoginButton(
      LoginState state, BuildContext context, Size size) {
    return InkWell(
      onTap: () {
        if (state is ValidState) {
          BlocProvider.of<LoginBloc>(context).add(SubmittedEvent(
              username.text.trim(), password.text, deviceid.trim()));
        }
      },
      child: Container(
        width: size.width,
        margin: const EdgeInsets.symmetric(vertical: 32),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: state is ValidState ? primaryColor : Colors.grey,
          borderRadius: BorderRadius.circular(29),
        ),
        child: const Center(
            child: Text(
          "LOGIN",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }

  ///SHOW HIDE PASSWORD FUNCTION
  void _showHidePassword() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }
}
