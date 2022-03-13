//import 'dart:async';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/social_share.dart';

class ContactsScreen extends StatelessWidget {
  static const routeName = '/contacts';
  static const bogatyr_url = 'https://bogatyr-castle.ru';
  static const tel = 'tel:88001003339';
  static const telBg = 'tel:+78622417777';
  //TODO: give the correct coordinates for sochipark location below
  //static const yandexMapUrl = 'https://yandex.ru/maps/-/CCU4iUTHsC';
  static const yandexMapUrl = 'https://yandex.ru/maps/-/CCU45RA5XD';
  //static const _email = '';

  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  final Uri _emailLaunchUriBG = Uri(
      scheme: 'mailto',
      path: 'reservations@sochi-park.ru',
      queryParameters: {'subject': 'App request'});

  final Uri _emailLaunchUriSP = Uri(
      scheme: 'mailto',
      path: 'info@sochi-park.ru',
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
        backgroundColor: Colors.pink,
        elevation: 0,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
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
            buildSectionText(context,
                'Отдел бронирования гостиничного комплекса «Богатырь»:'),
            ElevatedButton(
              onPressed: () => _launchURL(telBg),
              child: Text('+7 862 241 77 77'),
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
            buildSectionText(context, 'Электронный адрес Парка:'),
            TextButton(
              onPressed: () => launch(_emailLaunchUriSP.toString()),
              child: Text('info@sochi-park.ru',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary)),
            ),
            buildSectionText(
                context, 'Электронный адрес отеля-замка Богатырь:'),
            TextButton(
              onPressed: () => launch(_emailLaunchUriBG.toString()),
              child: Text('reservations@sochi-park.ru',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary)),
            ),
            ElevatedButton(
              onPressed: () => _launchURL(yandexMapUrl),
              child: const Text('Открыть на карте Яндекс'),
              style: ElevatedButton.styleFrom(
                primary: Colors.pink, // background
                onPrimary: Colors.white, // foreground
              ),
            ),
            buildSectionText(context, 'Адрес для отправки корреспонденции:'),
            buildSectionText(context,
                '354349, Краснодарский край, город Сочи, Почтовое отделение № 349, а/я 11'),
            SocialShare(),
          ],
        ),
      )),
    );
  }
}
