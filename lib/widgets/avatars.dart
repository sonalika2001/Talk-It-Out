import 'package:flutter/material.dart';

class Avatars extends StatelessWidget {
  final String avatar;
  Avatars(this.avatar);
  @override
  Widget build(BuildContext context) {
    var horizontal1 = 0.04*MediaQuery.of(context).size.width;
    var horizontal2 = 0.035*MediaQuery.of(context).size.width;
    var horizontal3 = 0.055*MediaQuery.of(context).size.width;
    var  vertical= 0.025*MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.only(top: vertical, left:horizontal1 ),
        child: Container(
    child: Image.network(
      avatar,
      scale: 10,
    ),
        ),
      );
  }
}
