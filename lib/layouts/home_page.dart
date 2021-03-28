import 'package:flutter/material.dart';
import 'package:jurytan_portfolio_app/utilities/constants.dart';
import 'package:jurytan_portfolio_app/widgets/fancy_navigation_bar.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        // centerTitle: true,
        elevation: 0.0,
        // title: Text('Jonathan Nguyen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  top: 30.0, left: 30.0, right: 30.0, bottom: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 9),
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('images/profile.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 9),
                    child: Column(
                      children: [
                        Text(
                          'Jonathan Nguyen',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Software Engineer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: kRoundedTopDecoration,
                width: double.infinity,
              ),
            )
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: null,
        backgroundColor: Colors.blue,
        label: const Text('MENU'),
        icon: const Icon(Icons.menu),
      ),
      bottomNavigationBar: FancyNavBar(),
    );
  }
}
