import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class ContactsScreen extends StatelessWidget {
  static const routeName = '/contacts';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: FittedBox(
            child: Text('Контакты'),
          ),
        ),
        drawer: MainDrawer(),
        body: TabBarView(
          children: [
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.orange,
            ),
            Container(
              color: Colors.lightGreen,
            ),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.rss_feed),
            ),
            Tab(
              icon: Icon(Icons.perm_identity),
            ),
          ],
          labelColor: Colors.green,
          unselectedLabelColor: Colors.blueGrey,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(3.0),
          indicatorColor: Colors.deepPurple,
        ),
        //backgroundColor: Colors.black,
      ),
    );
  }
}
