import 'package:flutter/material.dart';
import 'package:talk_it_out/constants.dart';



class Comments extends StatelessWidget {
  final String comment;
  Comments(this.comment);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 10, right: 10, top: 10, bottom: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: EdgeInsets.only(
              left: 20, right: 20, top: 20, bottom: 15),
          color: ke,
          child: Text(
            comment,
            style: kbodytextstyle,
          ),
        ),
      ),
    );
  }
}