import 'package:flutter/material.dart';

class TerminalItem extends StatefulWidget {
  //TerminalItem({Key key = const Key("any_key")}) : super(key: key);
  //this is a draft of sceleton for listTile

  final String pic;
  final String title;
  final String waitTime;
  final String type;
  final String status;
  final Color statusColor;

  const TerminalItem({
    Key key,
    required this.pic,
    required this.title,
    required this.waitTime,
    required this.type,
    required this.status,
    required this.statusColor,
  }) : super(key: key);

  @override
  _TerminalItemState createState() => _TerminalItemState();
}

class _TerminalItemState extends State<TerminalItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: ListTile(
            leading: CircleAvatar(
              //backgroundColor: Colors.lightGreen,
              backgroundImage: NetworkImage(
                pic,
              ),

              radius: 30,
            ),
            title: Text(
              title,
              //style: Theme.of(context).textTheme.headline6,
            ),
            subtitle: Text(
              type,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'РАБОТАЕТ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: (16),
                      color: Colors.lightGreen),
                ),
                Text(
                  'ожидание',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: (14),
                      color: Colors.blueGrey),
                ),
                Text(
                  '~30 мин',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: (14),
                      color: Colors.blueGrey),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
