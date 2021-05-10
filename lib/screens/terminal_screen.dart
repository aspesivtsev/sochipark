import 'package:flutter/material.dart';
import '../widgets/terminal_item.dart';

class TerminalScreen extends StatelessWidget {
  static const routeName = '/terminal_screen';
  const TerminalScreen({Key key = const Key("any_key")}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Терминал'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: TerminalItem(),
          ),
        ),
      ),
    );
  }
}
