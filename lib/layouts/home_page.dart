import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jurytan_portfolio_app/utilities/constants.dart';
import 'package:jurytan_portfolio_app/widgets/fancy_navigation_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatelessWidget {
  void _launchURL(String url) async => await launch(url);
  // await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

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
                      crossAxisAlignment: CrossAxisAlignment.end,
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
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 24.0,
                          left: 16.0,
                        ),
                        child: Text(
                          'Hi there!',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 32,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: Text(
                        "I'm Jonathan and I'm a software engineer at Google. Check out my stuff below!",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              _launchURL('https://github.com/jnguyen7410');
                            },
                            child: Text(
                              'GITHUB',
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              _launchURL('https://bit.ly/jnguyenLI');
                            },
                            child: Text(
                              'LINKEDIN',
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              _launchURL('http://nguyeningcode.com');
                            },
                            child: Text(
                              'PORTFOLIO',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
