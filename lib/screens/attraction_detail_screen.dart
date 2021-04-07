import 'package:flutter/material.dart';
import 'package:sochipark/dummy_data.dart';
import '../widgets/wave_widget.dart';
//import 'package:sochipark/models/types.dart';

class AttractionDetailScreen extends StatelessWidget {
  static const routeName = '/attraction_detail';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        //textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget buildSectionText(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText2,
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
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
                  child: Image.network(
                    selectedAttraction.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                AnimatedPositioned(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeOutQuad,
                  top: 0.0,
                  child: WaveWidget(
                    size: mq.size,
                    yOffset: mq.size.height / 3.0,
                    color: Color.fromRGBO(180, 180, 255, 1),
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
                          borderRadius: BorderRadius.all(Radius.circular(10)),
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
          ],
        ),
      ),
    );
  }
}
