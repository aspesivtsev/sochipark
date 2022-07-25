import 'package:flutter/material.dart';
import 'package:sochipark/widgets/attraction_item.dart';
import 'package:provider/provider.dart';
import '../providers/homepageprovider.dart';
import '../helpers/apihelper.dart';
import '../models/attractions.dart';
//import '../widgets/main_drawer.dart';
//import '../dummy_data.dart';

class AttractionsScreen extends StatefulWidget {
  static const routeName = '/attractions';

  @override
  State<AttractionsScreen> createState() => _AttractionsScreenState();
}

class _AttractionsScreenState extends State<AttractionsScreen> {
  //final image not to rebuil it
  final Image titleImage = Image.asset(
    'assets/images/sochipark_logo_small-white.png',
    fit: BoxFit.contain,
    height: 40,
  );

  _getAttractions() async {
    var provider = Provider.of<HomePageProvider>(context, listen: false);
    var response = await APIHelper.getAttractions();
    if (response.isSuccessful) {
      provider.setAttractionList(response.data);
    } else {
      print(response.message);
    }
    //provider.setIsProcessing(false);
  }

  @override
  void initState() {
    super.initState();
    _getAttractions();
  }

  @override
  Widget build(BuildContext context) {
    //final routeArgs =
    //  ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
//getting all the active attractions and sorting them according to sorting field
    /*final attractions = DUMMY_ATTRACTIONS.where((attraction) {
      return attraction.isActive == true;
    }).toList();*/
    //attractions.sort((a, b) => a.sorting.compareTo(b.sorting));

    return Scaffold(
      ///полупрозрачный апбар
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,

        //backgroundColor: Color(0xdd673ab7), //прозрачный цвет для апбара
        //elevation: 0,//это тоже удалить
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
      //drawer: MainDrawer(),
      body:
          //removed SafeArea from here so cards could take the whole space available
          Consumer<HomePageProvider>(
        builder: (_, item, __) => GridView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 600,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
          ),
          itemBuilder: (_, index) {
            Attraction attraction = item.getAttractionsByIndex(index);
            return AttractionItem(
              id: attraction.id.toString(),
              title: attraction.title!,
              imageUrl: attraction.imageUrl!,
              shortDescr: attraction.shortDescription!,
              description: attraction.description!,
              types: attraction.attrTypes!,
              workTime: attraction.workTime!,
              age: attraction.age!,
              height: attraction.height!,
              location: attraction.location!,
              withAdults: attraction.withAdults!,
              isPurchasedSeparately: attraction.isPurchasedSeparately!,
              specs: attraction.specs!,
              isActive: attraction.isActive!,
              isWorking: attraction.isWorking!,
              sorting: attraction.sorting!,
            );
          },
          itemCount: item.attractionList.length,
        ),
      ),
    );
  }
}
