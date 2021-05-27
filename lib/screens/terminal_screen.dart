import 'package:flutter/material.dart';
import '../widgets/terminal_item.dart';

class TerminalScreen extends StatelessWidget {
  static const routeName = '/terminal_screen';
  //const TerminalScreen({Key key = const Key("any_key")}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Терминал'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                      'https://www.sochipark.ru/upload/app/images/attractions/standard_980/zhar.jpg',
                  title: 'Жар-Птица',
                  waitTime: '45 мин',
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
            ],
          ),
        ),
      ),
    );
  }
}
