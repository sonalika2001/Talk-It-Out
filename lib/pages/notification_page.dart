import 'package:flutter/material.dart';

import '../constants.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}