import 'package:flutter/material.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key? key,
    required this.title,
    required this.btnText,
    required this.press,
  }) : super(key: key);
  final String title;
  final String btnText;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.headline4,
          ),
          TextButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero),

                ///цвет кнопки
                backgroundColor: MaterialStateProperty.all((Colors.lightGreen)),

                ///минимальные размер кнопки
                minimumSize: MaterialStateProperty.all(Size(95, 25)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),

                    ///side: BorderSide(color: Colors.pink, width: 3), ///цвет обводки кнопки
                  ),
                )),
            onPressed: press(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(btnText,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Tavolga',
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 9,
                          color: Color.fromARGB(80, 255, 255, 255))
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

/* 
///это типа плоская серая кнопочка
class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key? key,
    required this.title,
    required this.btnText,
    required this.press,
  }) : super(key: key);
  final String title;
  final String btnText;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.headline4,
          ),
          Container(
            child: Center(
              child: Text(btnText,
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontFamily: 'Tavolga',
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 9,
                          color: Color.fromARGB(80, 255, 255, 255))
                    ],
                  )),
            ),
            width: 75,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
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
                      spreadRadius: 1.0),
                ]),
          ),
          //onPressed: press(),
        ],
      ),
    );
  }
}
*/