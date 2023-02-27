import 'package:flutter/material.dart';
import 'package:travel_app/models/activity_place_model.dart';
import 'package:travel_app/models/card_place_model.dart';

class PlacesProvider extends ChangeNotifier {
  List<CardPlaceModel> places = [
    CardPlaceModel(
      place: 'Venice', 
      country: 'Italy', 
      title: '125 activities', 
      description: 'Enjoy best trips from top travel agencies at best prices', 
      imageURL: 'assets/venice.jpg',
      colorIcon: Colors.black,
      activities: [
        ActivityPlaceModel(
          title: 'St.Marks Basilica', 
          subtitle: 'Sightseeing Tour', 
          numberStars: 5, 
          listSchedules: [9, 11], 
          price: 30, 
          imageURL: 'assets/basilica.jpg'
        ),
        ActivityPlaceModel(
          title: 'Walking Tour gondola ride', 
          subtitle: 'Sightseeing Tour', 
          numberStars: 5, 
          listSchedules: [7, 8], 
          price: 210, 
          imageURL: 'assets/gondola-ride.jpg'
        )
      ]
    ),
    CardPlaceModel(
      place: 'Paris', 
      country: 'France', 
      title: '98 activities', 
      description: 'Unique and custom traditions organized by local people', 
      imageURL: 'assets/paris.jpg',
      colorIcon: Colors.white,
      activities: [
        ActivityPlaceModel(
          title: 'Walking Tour gondola ride', 
          subtitle: 'Sightseeing Tour', 
          numberStars: 5, 
          listSchedules: [7, 8], 
          price: 210, 
          imageURL: 'assets/gondola-ride.jpg'
        ),
        ActivityPlaceModel(
          title: 'Murano and Burano Tour', 
          subtitle: 'Sightseeing Tour', 
          numberStars: 4, 
          listSchedules: [10, 12], 
          price: 125, 
          imageURL: 'assets/murano-burano-tour.jpg'
        ),
      ]
    ),
    CardPlaceModel(
      place: 'New York', 
      country: 'United States', 
      title: '110 activities', 
      description: 'Sightseeing large streets at night and enjoy the best landscapes', 
      imageURL: 'assets/new-york.png',
      colorIcon: Colors.white,
      activities: [
        ActivityPlaceModel(
          title: 'Murano and Burano Tour', 
          subtitle: 'Sightseeing Tour', 
          numberStars: 4, 
          listSchedules: [10, 12], 
          price: 125, 
          imageURL: 'assets/murano-burano-tour.jpg'
        ),
        ActivityPlaceModel(
          title: 'St.Marks Basilica', 
          subtitle: 'Sightseeing Tour', 
          numberStars: 5, 
          listSchedules: [9, 11], 
          price: 30, 
          imageURL: 'assets/basilica.jpg'
        ),
      ]
    ),
  ];
}