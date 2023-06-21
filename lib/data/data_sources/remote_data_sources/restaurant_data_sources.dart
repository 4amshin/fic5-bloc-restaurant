import 'dart:convert';

import 'package:fic5_bloc_restaurant/data/model/request/restaurant_request/add_restaurant_request_model.dart';
import 'package:fic5_bloc_restaurant/data/model/response/restaurant_response/add_restaurant_response_model.dart';
import 'package:fic5_bloc_restaurant/data/model/response/restaurant_response/restaurant_response_model.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

import '../../../shared/constant.dart';

class RestaurantDataSources {
  Future<Either<String, RestaurantResponseModel>> getAllRestaurantData() async {
    const baseUrl = "${Constants.baseUrl}api/restaurants";
    final response =
        await http.get(Uri.parse(baseUrl), headers: <String, String>{
      'Content-type': 'application/json; charset=UTF-8',
    });

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

  Future<Either<String, AddRestaurantResponseModel>> addRestaurant({
    required AddRestaurantRequestModel restaurantData,
  }) async {
    const baseUrl = "${Constants.baseUrl}api/restaurants";
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: <String, String>{
        'Content-type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(restaurantData.toJson()),
    );

    if (response.statusCode == 200) {
      return Right(
        AddRestaurantResponseModel.fromJson(
          jsonDecode(response.body),
        ),
      );
    } else {
      return const Left("Failed Adding Restaurant Data");
    }
  }
}
