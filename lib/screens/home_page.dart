import 'package:flutter/material.dart';

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

  _scrollListener(){
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
    _opacity = _scrollPosition <screenSize.height * 0.40 ? _scrollPosition / (screenSize.height * 0.40) : 1;
    return Scaffold(
      appBar: PreferredSize(
          child: TopBarContents(_opacity),
          preferredSize: Size(screenSize.width, 70)),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                child: SizedBox(
                  height: screenSize.height * 0.65,
                  width: screenSize.width,
                  child: Image.asset(
                      'images/background.png',
                  fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
