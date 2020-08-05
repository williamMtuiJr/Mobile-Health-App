import 'package:flutter/material.dart';
import './../constants.dart';

class ChatGroups extends StatefulWidget {
  @override
  _ChatGroupsState createState() => _ChatGroupsState();
}

class _ChatGroupsState extends State<ChatGroups> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.0,
        ),
        RaisedButton(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 9,
          ),
          shape: RoundedRectangleBorder(
//            side: BorderSide(width: 10.0),
              borderRadius: BorderRadius.circular(20.0)),
          elevation: 0.0,
          color: kBackgroundColour2,
          onPressed: () {
            //Load Available Chat Groups
          },
          child: Text('Browse Chat Groups'),
        ),
//        ListView(
//          children: [
//            //Display loaded chat groups
//          ],
//        ),
      ],
    );
  }
}
