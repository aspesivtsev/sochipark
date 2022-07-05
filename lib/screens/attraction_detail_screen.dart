import 'package:flutter/material.dart';
//import 'package:sochipark/dummy_data.dart';
import '../widgets/wave_widget.dart';
import '../providers/homepageprovider.dart';
import 'package:provider/provider.dart';
//import 'package:sochipark/models/types.dart';

class AttractionDetailScreen extends StatelessWidget {
  static const routeName = '/attraction_detail';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(top: 25, bottom: 10, left: 15, right: 15),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }

  Widget buildSectionText(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Text(
        '$text',
        style: Theme.of(context).textTheme.bodyText2,
        softWrap: true,
        textAlign: TextAlign.start,
      ),
    );
  }

  Widget buildItemWithIcon(
      BuildContext context, String bodyText, IconData icon, Color iconColor) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: iconColor,
        radius: 20,
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: FittedBox(
            child: Icon(
              icon,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
      title: Text(bodyText),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    var provider = Provider.of<HomePageProvider>(context, listen: false);
    final _id =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final attractionId = _id['id'];
    //print('attr $attractionId');
    //вот тут какая-то херь
    //print('this is a provider ${provider.attractionList.firstWhere((element) => element.id == 1)}');

    final selectedAttraction = provider.attractionList.firstWhere(
        (element) => element.id.toString() == attractionId.toString());
    //print('ass ${selectedAttraction.attrTypes}');
    //final _sample = selectedAttraction.attrTypes;
    //print(_sample);
    //_sample.asMap().forEach((index, value) => DUMMY_TYPES.firstWhere((_type) => _type.id == value));
    final List<String> resultTypes = selectedAttraction.attrTypes!;

//parsing the types of the attraction
/*    for (String ctype in _sample!) {
      final resultName = DUMMY_TYPES.firstWhere((_type) => _type.id == ctype);
      resultTypes.add(resultName.title);
    }
*/
    return Scaffold(
      appBar: AppBar(
        title: FittedBox(
          child: Text(selectedAttraction.title!),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Container(
                    height: 300,
                    width: double.infinity,
                    child: LayoutBuilder(builder: (ctx, constraints) {
                      return Image.network(
                        selectedAttraction.imageUrl!,
                        fit: BoxFit.cover,
                      );
                    })),
                //wave animation
                AnimatedPositioned(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeOutQuad,
                  top: 0.0,
                  child: WaveWidget(
                    size: mq.size,
                    yOffset: 280,
                    //yOffset: mq.size.height / 4.0,
                    color: Colors.white,
                  ),
                ),
                //adding type lables on picture
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: resultTypes.map(
                    (_types) {
                      return Container(
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Text(
                          '#$_types',
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    },
                  ).toList(),
                ),
              ],
            ),
            buildSectionTitle(context, selectedAttraction.title!),
            buildSectionText(context, selectedAttraction.shortDescription!),
            buildSectionText(context, selectedAttraction.description!),
            Card(
              shadowColor: Colors.deepPurple,
              elevation: 6,
              margin: EdgeInsets.all(25),
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: <Widget>[
                    buildItemWithIcon(context, selectedAttraction.workTime!,
                        Icons.access_time, Colors.teal),
                    buildItemWithIcon(context, selectedAttraction.specs!,
                        Icons.settings, Colors.orange),
                    buildItemWithIcon(
                        context,
                        'Посещение от ${selectedAttraction.age.toString()} лет',
                        Icons.accessibility_new,
                        Colors.pink),
                    buildItemWithIcon(
                        context,
                        'Минимальный рост ${selectedAttraction.height.toString()} см',
                        Icons.height,
                        Colors.pink),
                    buildItemWithIcon(
                        context,
                        selectedAttraction.withAdults.toString(),
                        Icons.people,
                        Colors.green),
                    buildItemWithIcon(
                        context,
                        selectedAttraction.isPurchasedSeparately!
                            ? 'Билет покупается отдельно. Не входит в стоимость посещения парка.'
                            : 'Входит в стоимость посещения парка',
                        Icons.request_page_outlined,
                        Colors.blueAccent),
                    buildItemWithIcon(context, selectedAttraction.location!,
                        Icons.location_pin, Colors.indigo),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
