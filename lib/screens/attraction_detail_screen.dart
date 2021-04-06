import 'package:flutter/material.dart';
import 'package:sochipark/dummy_data.dart';
//import 'package:sochipark/models/types.dart';

class AttractionDetailScreen extends StatelessWidget {
  static const routeName = '/attraction_detail';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget buildSectionText(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText2,
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );
  }

//buildTypesList

  @override
  Widget build(BuildContext context) {
    // final mediaQuery = MediaQuery.of(context);
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
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedAttraction.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: resultTypes.map(
                (_types) {
                  return Chip(
                    avatar: CircleAvatar(
                      child: Text('#'),
                      backgroundColor: Colors.blueGrey,
                    ),
                    label: Text(_types),
                  );
                },
              ).toList(),
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
