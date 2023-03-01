import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF6158e6),
        child: Padding(
            padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              InkWell(
                onTap: (){},
                child: Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white, fontSize: 26,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                top: 5.0, bottom: 5.0,
              ),
                child: Divider(
                  color: Colors.blueGrey.shade400,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: (){},
                child: Text(
                  'About',
                  style: TextStyle(
                    color: Colors.white, fontSize: 26,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5.0, bottom: 5.0,
                ),
                child: Divider(
                  color: Colors.blueGrey.shade400,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: (){},
                child: Text(
                  'History',
                  style: TextStyle(
                    color: Colors.white, fontSize: 26,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5.0, bottom: 5.0,
                ),
                child: Divider(
                  color: Colors.blueGrey.shade400,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: (){},
                child: Text(
                  'Contact',
                  style: TextStyle(
                    color: Colors.white, fontSize: 26,
                  ),
                ),
              ),
              Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Copyright @ 2023 | Choyon',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
