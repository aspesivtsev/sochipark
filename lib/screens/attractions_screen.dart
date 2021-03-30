import 'package:flutter/material.dart';
import 'package:sochipark/widgets/attraction_item.dart';
import '../widgets/main_drawer.dart';
import '../dummy_data.dart';

class AttractionsScreen extends StatelessWidget {
  static const routName = '/attractions';

  @override
  Widget build(BuildContext context) {
    //final routeArgs =
    //  ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final attractions = DUMMY_ATTRACTIONS.where((attraction) {
      return attraction.isActive == true;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Сочи Парк',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
          /*title: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Image.asset('assets/images/sochipark_logo_small.png',
              fit: BoxFit.cover),*/
        ),
      ),
      drawer: MainDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.deepPurple, Colors.pink]),
          //colors: [Color.fromRGBO(83, 33, 168, 0.1), Colors.white]),
        ),
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return AttractionItem(
              id: attractions[index].id,
              title: attractions[index].title,
              imageUrl: attractions[index].imageUrl,
              shortDescr: attractions[index].shortDescr,
              description: attractions[index].description,
              types: attractions[index].types,
              workTime: attractions[index].workTime,
              age: attractions[index].age,
              height: attractions[index].height,
              location: attractions[index].location,
              withAdults: attractions[index].withAdults,
              isPurchasedSeparately: attractions[index].isPurchasedSeparately,
              specs: attractions[index].specs,
              isActive: attractions[index].isActive,
              sorting: attractions[index].sorting,
            );
          },
          itemCount: attractions.length,
        ),
      ),
    );
  }
}
