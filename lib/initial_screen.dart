import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:talk_it_out/constants.dart';
import 'package:talk_it_out/pages/topics_page.dart';
import 'package:talk_it_out/widgets/avatars.dart';
import 'package:talk_it_out/widgets/text_list.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class InitialScreen extends StatelessWidget {
  final List<TitledNavigationBarItem> items = [
    TitledNavigationBarItem(
      backgroundColor: kd,
      icon: FontAwesomeIcons.users,
      title: Center(
        child: Text(
          'Anonymous Community',
          style: knavstyle,
          textAlign: TextAlign.center,
        ),
      ),
    ),
    TitledNavigationBarItem(
      backgroundColor: kd,
      icon: FontAwesomeIcons.handHoldingHeart,
      title: Center(
        child: Text(
          'Counselor Support',
          style: knavstyle,
          textAlign: TextAlign.center,
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.only(top: 0.06 * MediaQuery.of(context).size.height),
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Avatars(text().avatars[2]),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('9967278520',style: ksubtitlestyle,),
                  ),
                ],
              ),),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: kbackgroundcolor,
          leading: GestureDetector(
            onTap: (){
              
            },
                      child: Icon(
              Icons.dehaze,
              color: ka,
              size: 30,
            ),
          ),
          title: Text(
            'TalkItOut',
            style: ktitletextstyle,
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/extraone');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Icon(
                  Icons.info_outline,
                  color: ka,
                  size: 30,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/extratwo');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Icon(
                  Icons.notifications_none,
                  color: ka,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        body: TopicsPage(),
        bottomNavigationBar: TitledBottomNavigationBar(
          inactiveColor: kc,
          activeColor: kb,
          inactiveStripColor: kd,
          indicatorColor: kb,
          curve: Curves.easeInOut,
          onTap: (value) {
            print('clicked');
          },
          items: items,
        ),
        backgroundColor: kbackgroundcolor,
      ),
    );
  }
}
