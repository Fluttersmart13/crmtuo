import 'package:crmtuo/repository/retrofitClient.dart';
import 'package:dio/dio.dart';

class ApiRepository {
  static final _sharedInstance = ApiRepository._internal();

  ApiRepository._internal();
  static Dio dio = Dio();
  static late RestClient client;

  static ApiRepository getInstance() {
    dio.options.headers["Content-type"] =
        "application/json"; // config your dio headers globally
    //client = RestClient(dio);
    return _sharedInstance;
  }
}
