import 'package:flutter/material.dart';
import 'package:talk_it_out/constants.dart';

class Filters extends StatefulWidget {
  bool s1 = true;
  bool s2=false;
  bool s3 = false;
  bool s4=false;

  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  
  @override
  Widget build(BuildContext context) {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: GestureDetector(
            onTap: () {

              setState(() {
                if(!widget.s1){
                widget.s1 = !widget.s1;
                widget.s2=false;
                widget.s3=false;widget.s4=false;
                }
              });
            },
            child: Chip(
              label: Text('Top'),
              labelPadding: EdgeInsets.all(8),
              labelStyle: widget.s1 ? kselectedfilterstyle : kbodyfilterstyle,
              backgroundColor: widget.s1 ? kb : ke,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                if(!widget.s2){
                widget.s2 = !widget.s2;
                widget.s1=false;
                widget.s3=false;widget.s4=false;
                }
              });
            },
            child: Chip(
              label: Text('New'),
              labelPadding: EdgeInsets.all(8),
              labelStyle: widget.s2 ? kselectedfilterstyle : kbodyfilterstyle,
              backgroundColor: widget.s2 ? kb : ke,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
               if(!widget.s3){
                widget.s3 = !widget.s3;
                widget.s1=false;
                widget.s2=false;widget.s4=false;
                }
              });
            },
            child: Chip(
              label: Text('My'),
              labelPadding: EdgeInsets.all(8),
              labelStyle: widget.s3 ? kselectedfilterstyle : kbodyfilterstyle,
              backgroundColor: widget.s3 ? kb : ke,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
               if(!widget.s4){
                widget.s4 = !widget.s4;
                widget.s1=false;widget.s3=false;
                widget.s2=false;
                }
              });
            },
            child: Chip(
              label: Text('Counselor'),
              labelPadding: EdgeInsets.all(8),
              labelStyle: widget.s4 ? kselectedfilterstyle : kbodyfilterstyle,
              backgroundColor: widget.s4 ? kb : ke,
            ),
          ),
        ),
      ],
    );
  }
}
