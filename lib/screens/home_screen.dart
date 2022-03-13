import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '../widgets/title_with_more_btn.dart';
//import '../dummy_data.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  final Image titleImage = Image.asset(
    'assets/images/sochipark_logo_small-white.png',
    fit: BoxFit.contain,
    height: 40,
  );

  @override
  Widget build(BuildContext context) {
    //высота и ширина экрана
    Size size = MediaQuery.of(context).size;
//тут мы берем первые несколько указанных элементов
    /* final attractions = DUMMY_ATTRACTIONS
        .where((attraction) {
          return attraction.isActive == true;
        })
        .toList()
        .take(5);
*/
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
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            TitleWithMoreButton(
                title: 'Ближайшие события', btnText: 'больше', press: () {}),
            Container(
              //height: size.height * 0.4
              //width: size.width * 0.4,
              //alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(5),
                      width: size.width * 0.4,
                      child: Column(
                        children: <Widget>[
                          Image.network(
                            'https://www.sochipark.ru/upload/app/images/attractions/standard_980/kvant.jpg',
                            height: 180,
                            //width: 240,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 10),
                                    blurRadius: 20,
                                    color: Colors.grey.withOpacity(0.23))
                              ],
                            ),
                            child: Row(
                              children: <Widget>[
                                FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    'КВАНТОВЫЙ СКАЧОК',
                                    style: TextStyle(fontSize: 14),
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //simple for loop with pictures can be added to a Row for axample
                    /*for (var i in attractions)
                      Image.network(
                        i.imageUrl,
                        height: 180,
                        width: 240,
                        fit: BoxFit.cover,
                      )*/
                  ],
                ),
              ),
            )
          ],
        )));
  }
  //TODO: ближайшие события, афиша, аттракционы, спецпредложения, очереди
}
