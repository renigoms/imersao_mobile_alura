import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_techtaste/model/retaurant.dart';

class RestaurantData extends ChangeNotifier{
  List<Restaurant> listRestaurant = [];
  Future<void> getRestaurants () async{
    String jsonString = await rootBundle.loadString('assets/data.json');
    Map<String, dynamic> data = jsonDecode(jsonString);
    List<dynamic> restaurantsData = data['restaurants'];
    listRestaurant = restaurantsData.map((restaurantData) => Restaurant.fromMap(restaurantData)).toList();
  }
}