//import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsScreen extends StatelessWidget {
  static const routeName = '/contacts';
  static const bogatyr_url = 'https://bogatyr-castle.ru';
  static const tel = 'tel:88001003339';
  //static const _email = '';

  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'reservations@sochi-park.ru',
      queryParameters: {'subject': 'App request'});

// ...

// mailto:smith@example.com?subject=Example+Subject+%26+Symbols+are+allowed%21

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(top: 25, bottom: 10, left: 15, right: 15),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }

  Widget buildSectionText(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Text(
        '$text',
        style: Theme.of(context).textTheme.bodyText2,
        softWrap: true,
        textAlign: TextAlign.start,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Контакты'),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/park.jpg',
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          buildSectionTitle(context, 'Как добраться'),
          buildSectionText(context,
              'Россия, г. Сочи, Адлерский район, Имеретинская низменность, Олимпийский проспект, 21'),
          buildSectionText(context,
              'Call-центр тематического парка «Сочи Парк» и гостиничного комплекса «Богатырь»:'),
          ElevatedButton(
            onPressed: () => _launchURL(tel),
            child: Text('8 800 100 33 39'),
            style: ElevatedButton.styleFrom(
              primary: Colors.lightGreen, // background
              onPrimary: Colors.white, // foreground
            ),
          ),
          ElevatedButton(
            onPressed: () => _launchURL(bogatyr_url),
            child: Text('перейти на сайт Богатыря!'),
            style: ElevatedButton.styleFrom(
              primary: Colors.lightGreen, // background
              onPrimary: Colors.white, // foreground
            ),
          ),
          TextButton(
            onPressed: () => launch(_emailLaunchUri.toString()),
            child: Text('отправить письмо!',
                style: TextStyle(color: Theme.of(context).accentColor)),
          ),
        ],
      )),
    );
  }
}
