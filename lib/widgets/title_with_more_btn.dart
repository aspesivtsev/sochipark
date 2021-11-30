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
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.headline4,
          ),
          TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all((Colors.lightGreen)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.white),
                ))),
            onPressed: press(),
            child: Text(btnText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
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
        ],
      ),
    );
  }
}
