import 'package:flutter/material.dart';
import 'package:sochipark/widgets/attraction_item.dart';
import '../widgets/main_drawer.dart';
import '../dummy_data.dart';

class AttractionsScreenGV extends StatelessWidget {
  static const routName = '/attractions';
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

    /* final attractions = DUMMY_ATTRACTIONS.where((attraction) {
      return attraction.isActive == true;
    }).toList();*/

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
      body: Container(
        decoration: const BoxDecoration(
          color: const Color.fromRGBO(180, 180, 255, 1),
          //color: Color.fromRGBO(255, 238, 165, 1),
          /*gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.lightGreen, Color.fromRGBO(255, 238, 165, 1)]),
          //colors: [Color.fromRGBO(83, 33, 168, 0.1), Colors.white]),*/
        ),
        child: GridView(
          children: DUMMY_ATTRACTIONS
              .map((attrData) => AttractionItem(
                    id: attrData.id,
                    title: attrData.title,
                    imageUrl: attrData.imageUrl,
                    shortDescr: attrData.shortDescr,
                    description: attrData.description,
                    types: attrData.types,
                    workTime: attrData.workTime,
                    age: attrData.age,
                    height: attrData.height,
                    location: attrData.location,
                    withAdults: attrData.withAdults,
                    isPurchasedSeparately: attrData.isPurchasedSeparately,
                    specs: attrData.specs,
                    isActive: attrData.isActive,
                    isWorking: attrData.isWorking,
                    sorting: attrData.sorting,
                  ))
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15),
        ),
      ),
    );
  }
}
