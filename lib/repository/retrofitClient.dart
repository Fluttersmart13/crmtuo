import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../model/LoginRequest.dart';
import '../model/loginResponse.dart';

part 'retrofitClient.g.dart';

@RestApi(baseUrl: "https://sandbox.crm.com/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST("backoffice/v2/users/authenticate")
  Future<LoginResponse> loginApi(@Body() LoginRequest reqModel);
}
