import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/background.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'Home',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.0,
              bottom: 5.0,
            ),
            child: Divider(
              color: Colors.blueGrey.shade400,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'About',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.0,
              bottom: 5.0,
            ),
            child: Divider(
              color: Colors.blueGrey.shade400,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'History',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.0,
              bottom: 5.0,
            ),
            child: Divider(
              color: Colors.blueGrey.shade400,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'Contact',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 370,
            ),
            child: Text(
              'Copyright @ 2023 | Choyon',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
