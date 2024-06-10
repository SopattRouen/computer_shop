import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Course lenght:',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '48 h',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(
              Icons.timer,
              size: 26,
              color: Colors.blue,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "Rating:",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '4.8',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(
              Icons.star,
              size: 26,
              color: Colors.amber,
            ),
          ],
        )
      ],
    );
  }
}
