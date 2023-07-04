import 'dart:convert';
import 'dart:developer';
import 'dart:typed_data';

import 'package:fic5_bloc_restaurant/data/data_sources/local_data_sources/auth_local_data_sources.dart';
import 'package:fic5_bloc_restaurant/data/model/request/restaurant_request/add_restaurant_request_model.dart';
import 'package:fic5_bloc_restaurant/data/model/response/restaurant_response/add_restaurant_response_model.dart';
import 'package:fic5_bloc_restaurant/data/model/response/restaurant_response/delete_restaurant_response_model.dart';
import 'package:fic5_bloc_restaurant/data/model/response/restaurant_response/restaurant_detail_response_model.dart';
import 'package:fic5_bloc_restaurant/data/model/response/restaurant_response/restaurant_response_model.dart';
import 'package:fic5_bloc_restaurant/data/model/response/restaurant_response/upload_image_response_model.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:camera/camera.dart';

import '../../../shared/constant.dart';

class RestaurantDataSources {
  Future<Either<String, RestaurantResponseModel>> getAllRestaurantData() async {
    const baseUrl = "${Constants.baseUrl}api/restaurants";
    final response = await http.get(
      Uri.parse(baseUrl),
      headers: <String, String>{
        'Content-type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      return Right(
        RestaurantResponseModel.fromJson(
          jsonDecode(response.body),
        ),
      );
    } else {
      return const Left("Failed Fetching Restaurants Data");
    }
  }

  Future<Either<String, RestaurantDetailResponseModel>> getRestaurantDetail({
    required int restaurantId,
  }) async {
    final baseUrl = "${Constants.baseUrl}api/restaurants/$restaurantId";
    final response = await http.get(
      Uri.parse(baseUrl),
      headers: <String, String>{
        'Content-type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      return Right(
        RestaurantDetailResponseModel.fromJson(
          jsonDecode(response.body),
        ),
      );
    } else {
      return const Left("Failed Fetch Restaurant Detail");
    }
  }

  Future<Either<String, AddRestaurantResponseModel>> addRestaurant({
    required AddRestaurantRequestModel restaurantData,
  }) async {
    const baseUrl = "${Constants.baseUrl}api/restaurants";

    //get the token first, needed for post
    final token = await AuthLocalDataSources().getToken();

    final response = await http.post(
      Uri.parse(baseUrl),
      headers: <String, String>{
        'Content-type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode(restaurantData.toJson()),
    );

    if (response.statusCode == 200) {
      log(jsonDecode(response.body).toString());
      return Right(
        AddRestaurantResponseModel.fromJson(
          jsonDecode(response.body),
        ),
      );
    } else {
      return const Left("Failed Adding Restaurant Data");
    }
  }

  Future<Either<String, UploadImageResponseModel>> uploadImage(
    XFile image,
  ) async {
    const baseUrl = "${Constants.baseUrl}api/upload";
    final request = http.MultipartRequest(
      'POST',
      Uri.parse(baseUrl),
    );

    final bytes = await image.readAsBytes();

    final multiPartFile = http.MultipartFile.fromBytes(
      'file',
      bytes,
      filename: image.name,
    );

    request.files.add(multiPartFile);

    //get the token from local
    final token = await AuthLocalDataSources().getToken();

    //set the authorization header
    request.headers['Authorization'] = 'Bearer $token';

    http.StreamedResponse response = await request.send();

    final Uint8List responseList = await response.stream.toBytes();
    final String responseData = String.fromCharCodes(responseList);

    if (response.statusCode == 200) {
      return Right(
        UploadImageResponseModel.fromJson(
          jsonDecode(responseData),
        ),
      );
    } else {
      return const Left("Failed Uploading Image");
    }
  }

  Future<Either<String, DeleteRestaurantResponseModel>> deleteRestaurant({
    required int restaurantId,
  }) async {
    final baseUrl = "${Constants.baseUrl}api/restaurants/$restaurantId";

    //get the token first, needed for post
    final token = await AuthLocalDataSources().getToken();

    final response = await http.delete(
      Uri.parse(baseUrl),
      headers: <String, String>{
        'Content-type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      log(jsonDecode(response.body).toString());
      return Right(
        DeleteRestaurantResponseModel.fromJson(
          jsonDecode(response.body),
        ),
      );
    } else {
      return Left("Failed Delete Restaurant id = $restaurantId");
    }
  }
}
