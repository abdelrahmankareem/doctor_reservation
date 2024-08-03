import 'package:doctor/core/networking/api_errors_handler.dart';
import 'package:doctor/core/networking/api_result.dart';
import 'package:doctor/core/networking/api_service.dart';
import 'package:doctor/features/login/data/models/login_request_model.dart';
import 'package:doctor/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);
  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.Login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
