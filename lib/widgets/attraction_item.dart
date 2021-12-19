import 'package:flutter/material.dart';

import '../screens/attraction_detail_screen.dart';

class AttractionItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String shortDescr;
  final String description;
  final List<String> types;
  final String workTime;
  final int age;
  final int height;
  final String location;
  final String withAdults;
  final bool isPurchasedSeparately;
  final String specs;
  final bool isActive;
  final bool isWorking;
  final int sorting;

  AttractionItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.shortDescr,
    required this.description,
    required this.types,
    required this.workTime,
    required this.age,
    required this.height,
    required this.location,
    required this.withAdults,
    required this.isPurchasedSeparately,
    required this.specs,
    required this.isActive,
    required this.isWorking,
    required this.sorting,
  });

  void selectAttraction(BuildContext context) {
    Navigator.of(context)
        .pushNamed(AttractionDetailScreen.routeName, arguments: {'id': id});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectAttraction(context),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 6,
        margin: EdgeInsets.all(8), //width between cards
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5)),
                  child: Image.network(
                    imageUrl,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ), //fit gives nice сropping to fit into the area specified
                ),
                /*
                //basic use of frosted glass widget
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: FrostedGlassBox(
                      child: Text(
                    title,
                    style: TextStyle(
                        letterSpacing: -1,
                        fontSize: 26,
                        color: Colors.white.withOpacity(0.4),
                        fontWeight: FontWeight.w100),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                    textAlign: TextAlign.center,
                  )),
                ),*/
                Positioned(
                  bottom: 15,
                  right: 15,
                  child: Container(
                    width: 270,
                    //color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 1),
                    decoration: BoxDecoration(
                        color: Colors.black45,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.6,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Text(
                      title,
                      style: TextStyle(
                          letterSpacing: -1,
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.w100),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.public),
                      SizedBox(
                        width: 6,
                      ),
                      FittedBox(
                        child: Text(
                          '$location',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.accessibility_new),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$age')
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.height),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$height')
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*
//this is a widget of matted frosted glass (beginning)
class FrostedGlassBox extends StatelessWidget {
  final Widget child;

  const FrostedGlassBox({required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        width: 300,
        height: 50,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 7.0,
                sigmaY: 7.0,
              ),
              child: Container(
                  width: 300, height: 50, child: Center(child: child)),
            ),
          ],
        ),
      ),
    );
  }
}
*/
