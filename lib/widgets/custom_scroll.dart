import 'package:flutter/material.dart';

import '../constants.dart';


class CustomScroll extends StatefulWidget {
final String url;
bool like;
  final int likes;
CustomScroll({this.likes,this.url,this.like});
  @override
  _CustomScrollState createState() => _CustomScrollState();
}

class _CustomScrollState extends State<CustomScroll> {
  
  @override
  Widget build(BuildContext context) {
    var horizontal = 0.035*MediaQuery.of(context).size.width;
    var  vertical= 0.015*MediaQuery.of(context).size.width;
    return SliverAppBar(
            backgroundColor: Colors.transparent,
            brightness: Brightness.dark,
            pinned: true,
            expandedHeight: 0.38 * MediaQuery.of(context).size.height,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    color: ka,
                    // padding: EdgeInsets.only(top:10),
                  ),
                  Image.network(widget.url, scale: 16 / 9),
                  
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.05 * MediaQuery.of(context).size.width),
                    child: Text(
                      'How has COVID-19 affected your mental health?',
                      style: kimagetextstyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                widget.like = !widget.like;
                                print('tapped');
                              });
                            },
                            child: Icon(
                              widget.like
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: kbackgroundcolor,
                              size: 40,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              widget.like
                                  ? (widget.likes + 1).toString()
                                  : widget.likes.toString(),
                              style: kbodytextstyle3,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.only(left: horizontal,top: vertical),
                child: Icon(
                  Icons.arrow_back,
                  color: kbackgroundcolor,
                  size: 30,
                ),
              ),
            ),
            actions: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/extratwo');
                },
                child: Padding(
                  padding: EdgeInsets.only(right: horizontal,top: vertical),
                  child: Icon(
                    Icons.notifications_none,
                    color: kbackgroundcolor,
                    size: 30,
                  ),
                ),
              ),
            ],
          );
  }
}