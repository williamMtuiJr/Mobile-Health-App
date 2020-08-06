import 'package:flutter/material.dart';

class PlansPage extends StatefulWidget {
  static String id = '/Ninth';

  @override
  _PlansPageState createState() => _PlansPageState();
}

class _PlansPageState extends State<PlansPage> {
  int itemCount = 5;
  String imageUrl;

  //TODO: Implement get Plan URL ImageURL from Firestore

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: () {
                //TODO: Implement to show planview
              },
              child: Flexible(
                fit: FlexFit.loose,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        );
      },
    ));
  }
}
