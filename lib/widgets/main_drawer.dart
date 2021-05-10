import 'package:flutter/material.dart';
import '../screens/attractions_screen.dart';
import '../screens/contacts_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import '../screens/calendar_screen.dart';
import '../screens/terminal_screen.dart';

class MainDrawer extends StatelessWidget {
  static const buyUrl = 'https://www.sochipark.ru/tickets/?tab=ONLINE';
  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  Widget buildListTile(
      final String title, final IconData icon, final VoidCallback tapAction) {
    return ListTile(
      leading: Icon(
        icon,
        size: 24,
      ),
      title: Text(title,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 22,
          )
          //fontWeight: FontWeight.bold),
          ),
      onTap: tapAction,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
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

            buildListTile('Аттракционы', Icons.attractions, () {
              Navigator.of(context)
                  .popAndPushNamed(AttractionsScreen.routeName);
            }),
            buildListTile('Терминал', Icons.dashboard, () {
              Navigator.of(context).popAndPushNamed(TerminalScreen.routeName);
            }),

            //this is old variant of list
            /*ListTile(
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
                Navigator.of(context)
                    .popAndPushNamed(AttractionsScreen.routeName);
              },
            ),*/
            //TODO: fix the items below
            ListTile(
              leading: const Icon(
                Icons.event,
                size: 24,
              ),
              title: const Text('Афиша мероприятий',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 22,
                  )
                  //fontWeight: FontWeight.bold),
                  ),
              onTap: () {
                Navigator.of(context).popAndPushNamed(EventsCalendar.routeName);
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
                Icons.contact_page,
                size: 24,
              ),
              title: const Text('Контакты',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 22,
                  )
                  //fontWeight: FontWeight.bold),
                  ),
              onTap: () {
                Navigator.of(context).popAndPushNamed(ContactsScreen.routeName);
              },
            ),
            Divider(
              thickness: 2,
              indent: 20,
              endIndent: 20,
              height: 40,
            ),
            ElevatedButton(
              onPressed: () => {
                _launchURL(buyUrl),
                //Navigator.pop(context), //this closes drawer after click on the button and the next line does the same
                Navigator.of(context).pop(),
              },
              child: Text('Купить билет в Парк'),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightGreen, // background
                onPrimary: Colors.white, // foreground
              ),
            ),
          ],
        ),
      ),
    );
  }
}
