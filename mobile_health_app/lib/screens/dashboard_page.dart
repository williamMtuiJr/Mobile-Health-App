import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobilehealthapp/constants.dart';
import './../components/circular_progress.dart';
import './../components/app_bar_items.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Builder(builder: (BuildContext context) {
          return GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Container(
              child: Icon(
                Icons.view_headline,
                color: Colors.black87,
              ),
              padding: EdgeInsets.all(7.0),
            ),
          );
        }),
        backgroundColor: Colors.white,
        title: Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
      drawer: DrawerItems(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: CircularProgress(
                child: Text('400KCal'),
                height: 200.0,
                percentage: 45.0,
              ),
            ),
            Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          leading: Icon(Icons.restaurant_menu),
                          title: Text('Food'),
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 12,
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
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text('66Kcal'),
                      ),
                      Expanded(
                        flex: 1,
                        child: LinearProgressIndicator(
                          value: 100.0,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomCard(
              title: 'Add Breakfast',
              subtitle: 'Recommended 300 - 600 kCal',
              image: Image.asset('images/breakfast.png'),
            ),
            CustomCard(
              title: 'Add Morning Snack',
              subtitle: 'Recommended 300 - 400 kCal',
              image: Image.asset('images/morning_snack.png'),
            ),
            CustomCard(
              title: 'Add Lunch',
              subtitle: 'Recommended 800 - 1200 kCal',
              image: Image.asset('images/lunch.png'),
            ),
            CustomCard(
              title: 'Add Evening Snack',
              subtitle: 'Recommended 300 - 400 kCal',
              image: Image.asset('images/evening_snack.png'),
            ),
            CustomCard(
              title: 'Add Dinner',
              subtitle: 'Recommended 800 - 1200 kCal',
              image: Image.asset('images/organic_food.png'),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  String title;
  String subtitle;
  Widget image;

  CustomCard({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 1.0,
        child: Container(
          width: MediaQuery.of(context).size.width * 14 / 16,
          child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            leading: image,
            title: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            subtitle: Text(
              subtitle,
              style: TextStyle(/*fontSize: 10.0*/),
            ),
            trailing: Icon(
              Icons.add_circle,
              color: kBackgroundColour2,
            ),
          ),
        ),
      ),
    );
  }
}
