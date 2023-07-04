import 'dart:convert';

import 'package:fic5_bloc_restaurant/data/data_sources/local_data_sources/auth_local_data_sources.dart';
import 'package:fic5_bloc_restaurant/data/model/request/auth_request/login_request_model.dart';
import 'package:fic5_bloc_restaurant/data/model/request/auth_request/register_request_model.dart';
import 'package:fic5_bloc_restaurant/data/model/response/auth_response/auth_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:fic5_bloc_restaurant/data/model/response/auth_response/profile_response_model.dart';
import 'package:http/http.dart' as http;

import '../../../shared/constant.dart';

class AuthDataSource {
  Future<Either<String, AuthResponseModel>> register({
    required RegisterRequestModel registerData,
  }) async {
    const baseUrl = "${Constants.baseUrl}api/auth/local/register";
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: {'Content-type': 'application/json; charset=UTF-8'},
      body: jsonEncode(registerData.toJson()),
    );

    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(jsonDecode(response.body)));
    } else {
      return const Left("Register Failed");
    }
  }

  Future<Either<String, AuthResponseModel>> login({
    required LoginRequestModel loginData,
  }) async {
    const baseUrl = "${Constants.baseUrl}api/auth/local";
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: {'Content-type': 'application/json; charset=UTF-8'},
      body: jsonEncode(loginData.toJson()),
    );

    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(jsonDecode(response.body)));
    } else {
      return const Left('Login Failed');
    }
  }

  Future<Either<String, ProfileResponseModel>> getProfile(
      {required int userId}) async {
    final baseUrl = "${Constants.baseUrl}api/users/$userId";

    //get the token first, needed for post
    final token = await AuthLocalDataSources().getToken();

    final response = await http.get(
      Uri.parse(baseUrl),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      return Right(
        ProfileResponseModel.fromJson(
          jsonDecode(response.body),
        ),
      );
    } else {
      return const Left("Failed Fetch User Profile");
    }
  }
}
