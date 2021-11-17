import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  final Image titleImage = Image.asset(
    'assets/images/sochipark_logo_small-white.png',
    fit: BoxFit.contain,
    height: 40,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              titleImage,
              Container(
                padding: const EdgeInsets.all(15.0),
                child: Text('  '),
              )
            ],
          ),
        ),
        drawer: MainDrawer(),
        body: Container());
  }
}
