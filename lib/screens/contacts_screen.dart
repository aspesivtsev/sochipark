import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  static const routeName = '/contacts';

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
        children: [
          buildSectionTitle(context, 'Как добраться'),
          buildSectionText(context,
              'Россия, г. Сочи, Адлерский район, Имеретинская низменность, Олимпийский проспект, 21'),
          buildSectionText(context,
              'Call-центр тематического парка «Сочи Парк» и гостиничного комплекса «Богатырь»: \n8 800 100 33 39'),
        ],
      )),
    );
  }
}
