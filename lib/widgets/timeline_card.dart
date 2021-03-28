import 'package:flutter/material.dart';

class TimelineCard extends StatelessWidget {
  TimelineCard(
      {this.heroImage,
      this.companyName,
      this.companyLogo,
      this.position,
      this.description});

  final AssetImage heroImage;
  final String companyName;
  final AssetImage companyLogo;
  final String position;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shadowColor: Colors.grey,
        elevation: 5,
        borderOnForeground: true,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image(
              image: this.heroImage,
              fit: BoxFit.fitWidth,
              width: double.infinity,
              height: 150,
            ),
            ListTile(
              leading: Image(
                image: companyLogo,
              ),
              title: Text(companyName),
              subtitle: Text(
                position,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('DETAILS'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
