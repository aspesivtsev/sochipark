import 'package:flutter/material.dart';

class TerminalItem extends StatefulWidget {
  //TerminalItem({Key key = const Key("any_key")}) : super(key: key);
  //this is a draft of sceleton for listTile
  /*Widget buildListTile(
      final String dTime,
      final Color bgColor,
      final String mainTitle,
      final String subtitle,
      final String status,
      final Color statusColor) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.lightGreen,
        radius: 30,
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: FittedBox(
            child: Text(
              dTime,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: (24),
                color: bgColor,
              ),
            ),
          ),
        ),
      ),
      title: Text(
        mainTitle,
        //style: Theme.of(context).textTheme.headline6,
      ),
      subtitle: Text(
        subtitle,
      ),
      trailing: Text(
        status,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: (16), color: statusColor),
      ),
    );
  }*/

  @override
  _TerminalItemState createState() => _TerminalItemState();
}

class _TerminalItemState extends State<TerminalItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration:
              BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.lightGreen,
              radius: 30,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: FittedBox(
                  child: Text(
                    '27 мин',
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
          ),
        ),
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
