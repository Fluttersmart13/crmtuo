import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../model/LoginRequest.dart';
import '../model/loginResponse.dart';

part 'retrofitClient.g.dart';

@RestApi(baseUrl: "http://219.65.91.49:9090/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST("ClaimManagment/Account/Login")
  Future<LoginResponse> loginApi(@Body() LoginRequest reqModel);
}
