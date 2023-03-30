import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class InternetConnectivityCheck {
  static final _sharedInstance = InternetConnectivityCheck._internal();

  InternetConnectivityCheck._internal();

  static InternetConnectivityCheck getInstance() {
    return _sharedInstance;
  }

  Future<bool?> chkInternetConnectivity() async {
    bool? internet;
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        internet = true;
        return internet;
      }
    } on SocketException catch (_) {
      if (kDebugMode) {
        print('not connected');
      }
      internet = false;
      return internet;
    }
    return internet;
  }

  String getNetworkError(DioError error) {
    ///1 - Connection failed error
    ///Please check your network connection
    ///2 - 400 Request error
    ///3 -
    if (error.message.toString().contains("SocketException")) {
      SocketException socketException = error.error as SocketException;
      return socketException.message;
    } else {
      print("CheckNetworkError${error}");
      print("CheckNetworkError${error.response?.statusCode}");

      if (error.response?.statusCode == 400) {
        return "Request error";
      } else if (error.response?.statusCode == 500) {
        return "Internal server error";
      } else if (error.response?.statusCode == 404) {
        return "Page not found";
      }
    }
    return "Something went wrong";
  }
}
