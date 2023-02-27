import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/providers/places_provider.dart';
import 'package:travel_app/widgets/card_place.dart';
import 'package:travel_app/widgets/list_icons.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placesProvider = Provider.of<PlacesProvider>(context);
    final places = placesProvider.places;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
              const _MainTitle(),
              const ListIcons(),
              const _HeaderList(title: 'Top Destinations'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (final place in places)
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, 'details', arguments: place),
                        child: CardPlace(
                          place: place,
                        ),
                      ),
                  ],
                )
              ),
              const _HeaderList(title: 'Exclusive Hotels'),
            ]
          ),
        )
      )
    );
  }
}

class _HeaderList extends StatelessWidget {
  final String title;

  const _HeaderList({
    Key? key,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17, left: 18, right: 18, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xff19212A),
              fontSize: 26,
              fontWeight: FontWeight.bold
            ),
          ),
          TextButton(
            onPressed: () {}, 
            child: const Text(
              'See all',
              style: TextStyle(
                color: Color(0xff6DA3B6),
                fontSize: 18
              ),
            )
          )
        ],
      ),
    );
  }
}

class _MainTitle extends StatelessWidget {
  const _MainTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 18),
      child: Text(
        'What would you like to find?',
        style: TextStyle(
          color: Color(0xff19212A),
          fontSize: 29,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}