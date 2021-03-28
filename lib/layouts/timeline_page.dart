import 'package:flutter/material.dart';
import 'package:jurytan_portfolio_app/utilities/constants.dart';
import 'package:jurytan_portfolio_app/widgets/fancy_navigation_bar.dart';
import 'package:jurytan_portfolio_app/widgets/timeline_card.dart';

class TimelinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        // centerTitle: true,
        elevation: 0.0,
        // title: Text('Timeline'),
      ),
      body: Container(
        decoration: kRoundedTopDecoration,
        width: double.infinity,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              shape: kRoundedTopSliverAppBar,
              title: Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                ),
                child: Center(
                  child: Text(
                    'Timeline',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              backgroundColor: Colors.white,
              expandedHeight: 75.0,
              flexibleSpace: FlexibleSpaceBar(),
            ),
            SliverFixedExtentList(
              itemExtent: 295.0,
              delegate: SliverChildListDelegate(
                [
                  TimelineCard(
                    companyLogo: AssetImage(
                      'images/g-logo.png',
                    ),
                    heroImage: AssetImage(
                      'images/google_hq.jpg',
                    ),
                    companyName: 'Google',
                    description: 'We\'ll fill this in later',
                    position: 'Application Engineer',
                  ),
                  TimelineCard(
                    companyLogo: AssetImage(
                      'images/doordash-logo.png',
                    ),
                    heroImage: AssetImage(
                      'images/doordash-hero-image.jpg',
                    ),
                    companyName: 'Doordash',
                    description: 'We\'ll fill this in later',
                    position: 'Software Engineer',
                  ),
                  TimelineCard(
                    companyLogo: AssetImage(
                      'images/modeln-logo.png',
                    ),
                    heroImage: AssetImage(
                      'images/modeln-hero-image.jpg',
                    ),
                    companyName: 'Model N',
                    description: 'We\'ll fill this in later',
                    position: 'Software Engineer',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: FancyNavBar(),
    );
  }
}
