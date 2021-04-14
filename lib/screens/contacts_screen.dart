import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  static const routeName = '/contacts';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Контакты'),
      ),
    );
  }
}
