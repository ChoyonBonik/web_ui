import 'package:flutter/material.dart';
import 'package:web_ui/widgets/bottom_bar_column.dart';

import 'info_text.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);
  static const Color gradientStartColor = Color(0xff11998e);
  static const Color gradientEndColor = Color(0xff0575E6);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(0.0),
        ),
        gradient: LinearGradient(colors: [
          gradientStartColor,
          gradientEndColor
        ],
            begin: const FractionalOffset(0.2, 0.2),
            end: const FractionalOffset(1.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
        ),
      ),
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomBarColumn(
                  heading: 'ABOUT', s1: 'Contact Us', s2: 'About Us', s3: 'Careers'),
              BottomBarColumn(
                  heading: 'HELP', s1: 'Payment', s2: 'Cancellation', s3: 'FAQ'),
              BottomBarColumn(
                  heading: 'SOCIAL', s1: 'Facebook', s2: 'LinkIn', s3: 'Twitter'),
              Container(
                color: Colors.white,
                width: 2,
                height: 150,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InfoText(
                    type: 'Email',
                    text: 'choyonbonik@gmail.com',
                  ),
                  SizedBox(height: 5),
                  InfoText(
                    type: 'Address',
                    text: '88/3, Sukrabad, Dhanmondi-32, Dhaka-1205',
                  ),
                  ],
              ),
            ],
          ),
          Divider(
            color: Colors.white,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Copyright © 2023 | Choyon',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
