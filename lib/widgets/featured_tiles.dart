import 'package:flutter/material.dart';

class FeaturedTiles extends StatelessWidget {
  FeaturedTiles({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  final List<String> images = [
    'images/test1.jpeg',
    'images/test2.jpeg',
    'images/test3.jpeg',
  ];
  final List<String> title = ['Sci-fi', 'Photography', 'Romance'];

  @override
  Widget build(BuildContext context) {
    return screenSize.width < 800
        ? Padding(
            padding: EdgeInsets.only(
              top: screenSize.height / 50,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: screenSize.width / 15,
                  ),
                  ...Iterable<int>.generate(images.length).map(
                    (int pageIndex) => Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: screenSize.width / 2.5,
                              width: screenSize.width / 1.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Image.asset(
                                  images[pageIndex],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: screenSize.height / 70,
                              ),
                              child: Text(
                                title[pageIndex],
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: screenSize.width / 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.only(
              top: screenSize.height * 0.06,
              left: screenSize.width / 15,
              right: screenSize.width / 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...Iterable<int>.generate(images.length).map(
                  (int pageIndex) => Column(
                    children: [
                      SizedBox(
                        height: screenSize.width / 6,
                        width: screenSize.width / 3.8,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  images[pageIndex],
                                ),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 20,
                                  spreadRadius: 5,
                                  color: Colors.grey.withOpacity(0.3),
                                ),
                              ]),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenSize.height / 70,
                        ),
                        child: Text(
                          title[pageIndex],
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
