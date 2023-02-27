import 'package:travel_app/models/activity_place_model.dart';

import 'package:flutter/material.dart';

class CardPlaceModel {
  String place;
  String country;
  String title;
  String description;
  String imageURL;
  Color colorIcon;
  List<ActivityPlaceModel> activities;

  CardPlaceModel({
    required this.place,
    required this.country,
    required this.title,
    required this.description,
    required this.imageURL,
    required this.colorIcon,
    required this.activities,
  });
}