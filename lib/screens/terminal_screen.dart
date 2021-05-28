import 'package:flutter/material.dart';
import '../widgets/terminal_item.dart';

class TerminalScreen extends StatelessWidget {
  static const routeName = '/terminal_screen';

  //const TerminalScreen({Key key = const Key("any_key")}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mq = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Терминал'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: _mq.size.width - 20,
                height: 60,
                margin: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.park_outlined, size: 25, color: Colors.blueGrey),
                    Text('Сейчас в Парке 2348 гостей',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: (20),
                            color: Colors.blueGrey)),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4.0, -4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0)
                    ]),
              ),
              TerminalItem(
                  picUrl:
                      'https://www.sochipark.ru/upload/app/images/attractions/standard_980/kvant.jpg',
                  title: 'Квантовый Скачок',
                  waitTime: '30 мин',
                  waiting: 'ожидание',
                  type: '#экстремальный',
                  status: 'РАБОТАЕТ',
                  statusColor: Colors.green),
              TerminalItem(
                  picUrl:
                      'https://www.sochipark.ru/upload/app/images/attractions/standard_980/zmei.jpg',
                  title: 'Змей Горыныч',
                  waitTime: '40 мин',
                  waiting: 'ожидание',
                  type: '#экстремальный',
                  status: 'РАБОТАЕТ',
                  statusColor: Colors.green),
              TerminalItem(
                  picUrl:
                      'https://www.sochipark.ru/upload/app/images/attractions/standard_980/zhar.jpg',
                  title: 'Жар-Птица',
                  waitTime: '20 мин',
                  waiting: 'ожидание',
                  type: '#экстремальный',
                  status: 'РАБОТАЕТ',
                  statusColor: Colors.green),
              TerminalItem(
                  picUrl:
                      'https://www.sochipark.ru/upload/app/images/attractions/standard_980/shar.jpg',
                  title: 'Шаролет',
                  waitTime: '------',
                  waiting: 'ожидание',
                  type: '#семейный #детский',
                  status: 'НЕ РАБОТАЕТ',
                  statusColor: Colors.blueGrey),
              TerminalItem(
                  picUrl:
                      'https://www.sochipark.ru/upload/app/images/attractions/standard_980/koleso.jpg',
                  title: 'Колесо Времени',
                  waitTime: '10 мин',
                  waiting: 'ожидание',
                  type: '#семейный',
                  status: 'РАБОТАЕТ',
                  statusColor: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
