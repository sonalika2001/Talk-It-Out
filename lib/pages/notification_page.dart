import 'package:flutter/material.dart';

import '../constants.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.only(top: 0.06 * MediaQuery.of(context).size.height),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kbackgroundcolor,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: ka,
              size: 30,
            ),
          ),
          centerTitle: true,
          title: Text('Notifications', style: ktitletextstyle),
        ),
      ),
    );
  }
}
