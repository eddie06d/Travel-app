import 'package:flutter/material.dart';

class ListIcons extends StatelessWidget {
  const ListIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () { }, 
            child: const CircleAvatar(
              backgroundColor: Color(0xffD8ECF1),
              child: Icon(
                Icons.flight_land_rounded, 
                color: Color(0xff3EBACE)
              ),
              radius: 27,
            ),
          ),
          GestureDetector(
            onTap: () {}, 
            child: const CircleAvatar(
              backgroundColor: Color(0xffD8DFE3),
              child: Icon(
                Icons.directions_car_filled_rounded,
                color: Color(0xffB3BCC1)
              ),
              radius: 27,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const CircleAvatar(
              backgroundColor: Color(0xffD8DFE3),
              child: Icon(
                Icons.downhill_skiing_rounded, 
                color: Color(0xffB3BCC1)
              ),
              radius: 27,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const CircleAvatar(
              backgroundColor: Color(0xffD8DFE3),
              child: Icon(
                Icons.two_wheeler_rounded, 
                color: Color(0xffB3BCC1)
              ),
              radius: 27,
            )
          )
        ]
    );
  }
}
