import 'package:flutter/material.dart';

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
    required this.sorting,
  });

  /*void selectAttraction(BuildContext context) {
    Navigator.of(context).pushNamed(AttractionDetailScreen.routeName,
        arguments: {'id': id, 'color': color});
  }*/

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //onTap: () => selectAttraction(context),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ), //fit gives nice сropping to fit into the area specified
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    //color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 1),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.5,
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
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.public),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$location')
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
