import 'package:retrofit/retrofit.dart';

//part 'retrofitClient.g.dart';

@RestApi(baseUrl: "http://219.65.91.49:9090/")
abstract class RestClient {
  // factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("SafetyService/MobileEvents.svc/LoadImages")
  Future<void> getSlideShowImages();

  // @GET("SafetyService/SignIns.svc/ViewSignInParameters")
  // Future<SafetyMeasure> getSignInList();
  //
  // @GET("SafetyService/SignOuts.svc/ViewSignOutParameters")
  // Future<SafetyMeasure> getSignOutList();
  //
  // @GET("SafetyService/SignIns.svc/ViewSignInDetails")
  // Future<SignInAndTrModeResponse> getSignInAndTrModeDetails(
  //     @Query("atmOfficerId") String atmOfficerId);
  //
  // @GET("SafetyService/SignIns.svc/ViewTWAuditAccess")
  // Future<TwoWheelerVisibilityResponse> checkTwoWheelerVisibilityResponse(
  //     @Query("userid") String userId);
  //
  // @POST("SafetyService/SignIns.svc/InsertSignInDetails")
  // Future<CommonResponse> insertSignInDetails(@Body() SignInReqModel reqModel);
  //
  // @POST("SafetyService/SignOuts.svc/InsertSignOutDetails")
  // Future<CommonResponse> insertSignOutDetails(@Body() SignOutReqModel reqModel);
  //
  // @POST("SafetyService/MobileEvents.svc/InsertMobileEvents")
  // Future<CommonResponse> insertSystemEvents(
  //     @Body() EventsSyncReqModel reqModel);
  //
  // @POST("SafetyService/speeds.svc/InsertSpeedDetails")
  // Future<CommonResponse> insertLocations(@Body() SyncReqModel reqModel);
  //
  // @GET("SafetyService/SignIns.svc/ViewTransaportMode")
  // Future<TransportModeModel> getTransportModes();
  //
  // @GET("SafetyAuditService/SafetyAudits.svc/GetStates")
  // Future<StateListResponse> getStateList();
  //
  // @POST("SafetyService/SignIns.svc/InsertSwitchTransportMode")
  // Future<CommonResponse> switchTransportMode(
  //     @Body() SwitchTransportModeReqModel reqModel);
  //
  // @POST("SafetyAuditService/SafetyAudits.svc/SaveSafetyAudits")
  // Future<SubmitAuditResponse> submit2WheelerAudit(
  //     @Body() Audit2WheelerReqModel reqModel);
  //
  // @POST("ClaimService/Claim.svc/SaveClaim")
  // Future<SubmitClaimResponse> submitClaimRequest(@Body() ClaimRequest reqModel);
  //
  // @GET("SafetyAuditService/SafetyAudits.svc/GetATMOList")
  // Future<ATMOsListResponse> getATMOsList(
  //     @Query("stateheadid") String atmOfficerId);
  //
  // @GET("/SafetyAuditService/SafetyAudits.svc/GetCompleteddAudits")
  // Future<CompletedAuditListResponse> getCompletedAuditList(
  //     @Query("stateheadid") String stateHeadId);
  //
  // @GET("/SafetyAuditService/SafetyAudits.svc/GetpendingAudits")
  // Future<PendingAuditListResponse> getPendingAuditList(
  //     @Query("stateheadid") String stateHeadId);
  //
  // @GET("ClaimService/Claim.svc/GetDistanceTravel")
  // Future<AtmoTravelledDistanceResponse> getAtmoTravelledDistance(
  //     @Query("associateid") String atmoId,
  //     @Query("modeoftransport") String transportMode,
  //     @Query("traveldate") String travelDate);
}
