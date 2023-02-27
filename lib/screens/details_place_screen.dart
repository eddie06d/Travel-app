import 'package:flutter/material.dart';
import 'package:travel_app/models/card_place_model.dart';

class DetailsPlaceScreen extends StatelessWidget {
  const DetailsPlaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final place = ModalRoute.of(context)!.settings.arguments as CardPlaceModel;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      place.imageURL,
                      height: 280,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
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
                    height: 280,
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              child: Icon(
                                Icons.arrow_back,
                                size: 28,
                                color: place.colorIcon
                              ),
                              onTap: () => Navigator.pop(context),
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  child: Icon(
                                    Icons.search,
                                    size: 28,
                                    color: place.colorIcon
                                  ),
                                  onTap: () => () {},
                                ),
                                const SizedBox(width: 12),
                                GestureDetector(
                                  child: Icon(
                                    Icons.filter_list,
                                    size: 28,
                                    color: place.colorIcon
                                  ),
                                  onTap: () => () {},
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  place.place,
                                  style: const TextStyle(
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffEBF1F8),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.near_me,
                                      color: Color(0xffB4C1C6),
                                      size: 16,
                                    ),
                                    const SizedBox(width: 7),
                                    Text(
                                      place.country,
                                      style: const TextStyle(
                                        fontSize: 21,
                                        color: Color(0xffB4C1C6),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.bookmark_border,
                                color: Color(0xffB4C1C6),
                                size: 27,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              for(final activity in place.activities)
                Stack(
                  children: [
                    Card(
                      margin: const EdgeInsets.only(top: 10, right: 10, left: 30),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15, right: 10, left: 75),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [         
                                Container(
                                  width: 150,
                                  child: Text(
                                    activity.title,
                                    style: const TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff19212A),
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '\$${activity.price}',
                                      style: const TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff19212A),
                                      )
                                    ),
                                    const Text(
                                      'per pax',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xffB4C1C6),
                                      )
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              activity.subtitle,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xffB4C1C6),
                              ),
                            ),
                            const SizedBox(height: 3),
                            Row(
                              children: [
                                for(var i=0; i<activity.numberStars; i++)
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                    size: 13,
                                  ),
                              ],
                            ),
                            const SizedBox(height: 11),
                            Row(
                              children: [
                                for(var i=0; i<activity.listSchedules.length; i++)
                                Container(
                                  margin: const EdgeInsets.only(right: 5),
                                  padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xffE2F4F7)
                                  ),
                                  child: Text(
                                    '${activity.listSchedules[i]}:00 am',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.black87
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 23, left: 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          activity.imageURL,
                          height: 135,
                          width: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                )
            ],
          ),
        ),
      )
    );
  }
}