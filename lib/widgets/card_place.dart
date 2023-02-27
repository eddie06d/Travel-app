import 'package:flutter/material.dart';
import 'package:travel_app/models/card_place_model.dart';

class CardPlace extends StatelessWidget {
  final CardPlaceModel place;

  const CardPlace({
    Key? key,
    required this.place
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
      width: 225,
      child: Column(
        children: [
          Stack(
            children: [
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: const EdgeInsets.only(top: 170, bottom: 5),
                child: Padding(
                  padding: const EdgeInsets.only(top: 45, bottom: 10, left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        place.title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff19212A),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        place.description,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xffB4C1C6),
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                )
              ),
              Container(
                margin: const EdgeInsets.only(left: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    place.imageURL,
                    height: 200,
                    width: 210,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 8),
                height: 200,
                width: 210,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.05),
                      Colors.black.withOpacity(0.025),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 8),
                height: 200,
                padding: const EdgeInsets.only(left: 12, bottom: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      place.place,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffEBF1F8),
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.near_me,
                          color: Color(0xffB4C1C6),
                          size: 11,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          place.country,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xffB4C1C6),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ]
      ),
    );
  }
}