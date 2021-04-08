import 'package:flutter/material.dart';
import '../screens/attractions_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 90,
            width: double.infinity,
            // margin: EdgeInsets.all(20),
            padding: EdgeInsets.only(top: 30, left: 20),
            alignment: Alignment.center,
            color: Theme.of(context).accentColor,
            child: const Text(
              'Волшебство начинается...',
              style: TextStyle(
                  //fontWeight: FontWeight.w900,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Icon(
              Icons.attractions,
              size: 24,
            ),
            title: const Text('Аттракционы',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 22,
                )
                //fontWeight: FontWeight.bold),
                ),
            onTap: () {
              AttractionsScreen();
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.map,
              size: 24,
            ),
            title: const Text('Карта',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 22,
                )
                //fontWeight: FontWeight.bold),
                ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.event,
              size: 24,
            ),
            title: const Text('Афиша',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 22,
                )
                //fontWeight: FontWeight.bold),
                ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
