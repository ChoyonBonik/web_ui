import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_ui/widgets/bottom_bar.dart';
import 'package:web_ui/widgets/carousel.dart';
import 'package:web_ui/widgets/featured_heading.dart';
import 'package:web_ui/widgets/featured_tiles.dart';
import 'package:web_ui/widgets/floating_quick_access_bar.dart';
import 'package:web_ui/widgets/main_heading.dart';
import 'package:web_ui/widgets/menu_drawer.dart';

import '../widgets/top_bar_contents.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: screenSize.width < 800
          ? AppBar(
              iconTheme: IconThemeData(
                color: Colors.white,
              ),
              elevation: 0,
              backgroundColor: Colors.white.withOpacity(_opacity),
              title: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.book,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'বইবিতান',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w900,
                      letterSpacing: 3,
                    ),
                  ),
                ],
              ),
            )
          : PreferredSize(
              child: TopBarContents(_opacity),
              preferredSize: Size(screenSize.width, 1000)),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: screenSize.height * 0.65,
                  width: screenSize.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/back.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text('Online Book Shop',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        )),
                  ),
                ),
                Column(
                  children: [
                    FloatingQuickAccessBar(screenSize: screenSize),
                    FeaturedHeading(screenSize: screenSize),
                    FeaturedTiles(screenSize: screenSize),
                    MainHeading(screenSize: screenSize),
                    MainCarousel(),
                    SizedBox(
                      height: screenSize.height / 10,
                    ),
                    BottomBar(),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
