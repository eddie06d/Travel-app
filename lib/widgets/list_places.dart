import 'package:flutter/material.dart';
import 'package:travel_app/models/card_place_model.dart';
import 'package:travel_app/widgets/card_place.dart';

class ListPlaces extends StatelessWidget {
  final List<CardPlaceModel> places;

  const ListPlaces({
    Key? key,
    required this.places
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: places.length,
        itemBuilder: ( _ , int index) => CardPlace(
          place: places[index]
        ),
      ),
    );
  }
}