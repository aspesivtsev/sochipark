import 'package:flutter/material.dart';
import 'package:sochipark/dummy_data.dart';
import '../widgets/wave_widget.dart';
//import 'package:sochipark/models/types.dart';

class AttractionDetailScreen extends StatelessWidget {
  static const routeName = '/attraction_detail';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        //textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget buildSectionText(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText2,
        softWrap: true,
        textAlign: TextAlign.justify,
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
              size: 25,
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

    final _id =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final attractionId = _id['id'];
    final selectedAttraction = DUMMY_ATTRACTIONS
        .firstWhere((attraction) => attraction.id == attractionId);
    final _sample = selectedAttraction.types;
    //_sample.asMap().forEach((index, value) => DUMMY_TYPES.firstWhere((_type) => _type.id == value));
    final List resultTypes = [];

    for (String ctype in _sample) {
      final resultName = DUMMY_TYPES.firstWhere((_type) => _type.id == ctype);
      resultTypes.add(resultName.title);
    }

    return Scaffold(
      appBar: AppBar(
        title: FittedBox(
          child: Text(selectedAttraction.title),
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
                        selectedAttraction.imageUrl,
                        fit: BoxFit.cover,
                      );
                    })),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: resultTypes.map(
                    (_types) {
                      return Container(
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
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
            buildSectionTitle(context, selectedAttraction.title),
            buildSectionText(context, selectedAttraction.shortDescr),
            buildSectionText(context, selectedAttraction.description),
            Card(
              elevation: 2,
              margin: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: <Widget>[
                    buildItemWithIcon(context, selectedAttraction.workTime,
                        Icons.access_time, Colors.green),
                    buildItemWithIcon(context, selectedAttraction.specs,
                        Icons.settings, Colors.blueGrey),
                    buildItemWithIcon(
                        context,
                        '${selectedAttraction.age.toString()} лет минималочка! :-)',
                        Icons.accessibility_new,
                        Colors.blueGrey),
                    buildItemWithIcon(
                        context,
                        selectedAttraction.height.toString(),
                        Icons.height,
                        Colors.blueGrey),
                    buildItemWithIcon(
                        context,
                        selectedAttraction.withAdults.toString(),
                        Icons.people,
                        Colors.blueGrey)
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
