import 'package:flutter/material.dart';
import 'package:sochipark/widgets/attraction_item.dart';
import '../widgets/main_drawer.dart';
import '../dummy_data.dart';

class AttractionsScreen extends StatelessWidget {
  static const routeName = '/attractions';
  //final image not to rebuil it
  final Image titleImage = Image.asset(
    'assets/images/sochipark_logo_small-white.png',
    fit: BoxFit.contain,
    height: 40,
  );

  @override
  Widget build(BuildContext context) {
    //final routeArgs =
    //  ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
//getting all the active attractions and sorting them according to sorting field
    final attractions = DUMMY_ATTRACTIONS.where((attraction) {
      return attraction.isActive == true;
    }).toList();
    attractions.sort((a, b) => a.sorting.compareTo(b.sorting));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        /*title: Text(
          'Сочи Парк',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),*/
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
      body:
          //removed SafeArea from here so cards could take the whole space available
          Container(
        decoration: const BoxDecoration(
          color: const Color(0xFFEEEEEE),
          //color: const Color.fromRGBO(180, 180, 255, 1),
          //color: Colors.grey,
          /*gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.lightGreen, Color.fromRGBO(255, 238, 165, 1)]),
          //colors: [Color.fromRGBO(83, 33, 168, 0.1), Colors.white]),*/
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
              isWorking: attractions[index].isWorking,
              sorting: attractions[index].sorting,
            );
          },
          itemCount: attractions.length,
        ),
      ),
    );
  }
}
