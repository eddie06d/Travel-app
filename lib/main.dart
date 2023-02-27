import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/providers/places_provider.dart';
import 'package:travel_app/screens/details_place_screen.dart';
import 'package:travel_app/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => PlacesProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Travel App',
        initialRoute: 'home',
        routes: {
          'home': ( _ ) => const HomeScreen(),
          'details': ( _ ) => const DetailsPlaceScreen(),
        },
      ),
    );
  }
}