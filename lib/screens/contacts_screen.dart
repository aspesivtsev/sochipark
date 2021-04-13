import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class ContactsScreen extends StatelessWidget {
  static const routeName = '/contacts';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: FittedBox(
            child: Text('Контакты'),
          ),
        ),
        drawer: MainDrawer(),
        body: TabBarView(
          children: [
            new Container(
              color: Colors.yellow,
            ),
            new Container(
              color: Colors.orange,
            ),
            new Container(
              color: Colors.lightGreen,
            ),
            new Container(
              color: Colors.red,
            ),
          ],
        ),
        bottomNavigationBar: new TabBar(
          tabs: [
            Tab(
              icon: new Icon(Icons.home),
            ),
            Tab(
              icon: new Icon(Icons.rss_feed),
            ),
            Tab(
              icon: new Icon(Icons.perm_identity),
            ),
            Tab(
              icon: new Icon(Icons.settings),
            )
          ],
          labelColor: Colors.yellow,
          unselectedLabelColor: Colors.blue,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Colors.red,
        ),
        //backgroundColor: Colors.black,
      ),
    );
    /*Scaffold(
      appBar: AppBar(
        title: FittedBox(
          child: Text('Контакты'),
        ),
      ),
      body: TabBarView(
        children: [
          new Container(
            color: Colors.yellow,
          ),
          new Container(
            color: Colors.orange,
          ),
          new Container(
            color: Colors.lightGreen,
          ),
          new Container(
            color: Colors.red,
          ),
        ],
      ),
    );*/
  }
}
