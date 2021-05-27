import 'package:flutter/material.dart';

class TerminalItem extends StatefulWidget {
  //TerminalItem({Key key = const Key("any_key")}) : super(key: key);
  //this is a draft of sceleton for listTile

  final String picUrl;
  final String title;
  final String waitTime;
  final String waiting;
  final String type;
  final String status;
  final Color statusColor;

  const TerminalItem({
    Key? key,
    required this.picUrl,
    required this.title,
    required this.waitTime,
    required this.waiting,
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
                widget.picUrl,
              ),

              radius: 30,
            ),
            title: Text(
              widget.title,
              //style: Theme.of(context).textTheme.headline6,
            ),
            subtitle: Text(
              widget.type,
            ),
            trailing: Container(
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      widget.status,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: (20),
                          color: Colors.lightGreen),
                    ),
                  ),
                  /*Text(
                    widget.waiting,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: (14),
                        color: Colors.blueGrey),
                  ),*/
                  Container(
                    //margin: EdgeInsets.all(0),
                    //padding: EdgeInsets.all(0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 20,
                          color: Colors.pink,
                        ),
                        FittedBox(
                          child: Text(
                            widget.waitTime,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: (17),
                                color: Colors.blueGrey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
