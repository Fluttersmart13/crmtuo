import 'package:crmtuo/repository/retrofitClient.dart';
import 'package:dio/dio.dart';

import '../model/LoginRequest.dart';
import '../model/loginResponse.dart';

class ApiRepository {
  static final _sharedInstance = ApiRepository._internal();

  ApiRepository._internal();
  static Dio dio = Dio();
  static late RestClient client;

  static ApiRepository getInstance() {
    dio.options.headers["Content-type"] =
        "application/json"; // config your dio headers globally
    dio.options.headers["user-agent"] =
        "PostmanRuntime/7.31.3"; // config your dio headers globally
    dio.options.headers["api_key"] =
        "534d231d-71c7-46c6-8a48-e473d1a9b638"; // config your dio headers globally

    client = RestClient(dio);
    return _sharedInstance;
  }

  Future<LoginResponse?> loginApi(LoginRequest request) async {
    return await ApiRepository.client.loginApi(request);
  }
}
