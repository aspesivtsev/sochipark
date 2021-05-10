import 'package:flutter/material.dart';

class TerminalItem extends StatefulWidget {
  //TerminalItem({Key key = const Key("any_key")}) : super(key: key);

  @override
  _TerminalItemState createState() => _TerminalItemState();
}

class _TerminalItemState extends State<TerminalItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.lightGreen,
                radius: 30,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: FittedBox(
                    child: Text(
                      '27м',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: (24),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              title: Text(
                'КВАНТОВЫЙ СКАЧОК',
                //style: Theme.of(context).textTheme.headline6,
              ),
              subtitle: Text(
                '#экстремальный',
              ),
              trailing: Text(
                'РАБОТАЕТ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: (16),
                    color: Colors.lightGreen),
              ),
            )),
        Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.orange,
                radius: 30,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: FittedBox(
                    child: Text(
                      '35м',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: (24),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              title: Text(
                'ЖАР-ПТИЦА',
                //style: Theme.of(context).textTheme.headline6,
              ),
              subtitle: Text(
                '#экстремальный',
              ),
              trailing: Text(
                'РАБОТАЕТ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: (16),
                    color: Colors.lightGreen),
              ),
            )),
        Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 30,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: FittedBox(
                    child: Text(
                      '--',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: (24),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              title: Text(
                'ШАРОЛЕТ',
                //style: Theme.of(context).textTheme.headline6,
              ),
              subtitle: Text(
                '#семейный #детский',
              ),
              trailing: Text(
                'НЕ РАБОТАЕТ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: (16),
                    color: Colors.grey),
              ),
            )),
      ],
    );
  }
}
