import 'package:flutter/material.dart';
import 'package:talk_it_out/constants.dart';



class Comments extends StatelessWidget {
  final String comment;
  Comments(this.comment);
  @override
  Widget build(BuildContext context) {
    var horizontal1 = 0.04*MediaQuery.of(context).size.width;
    var horizontal2 = 0.03*MediaQuery.of(context).size.width;
    var horizontal3 = 0.055*MediaQuery.of(context).size.width;
    var  vertical= 0.025*MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.only(
            left: 20, right: 20, top: horizontal3, bottom: 15),
        color: ke,
        child: Text(
          comment,
          style: kbodytextstyle,
        ),
      ),
    );
  }
}