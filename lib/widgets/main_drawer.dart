import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(30),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Сочи Парк',
              style: TextStyle(
                  //fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColorDark),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.map,
              size: 26,
            ),
            title: Text('Карта',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 24,
                )
                //fontWeight: FontWeight.bold),
                ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.event,
              size: 26,
            ),
            title: Text('Афиша',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 24,
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
