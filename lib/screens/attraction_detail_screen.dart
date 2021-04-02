import 'package:flutter/material.dart';

class Attraction extends StatelessWidget {
  static const routeName = '/attraction_detail';

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final _id =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;

    return Container();
  }
}
