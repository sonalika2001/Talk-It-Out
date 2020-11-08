import 'package:flutter/material.dart';

import '../constants.dart';

class LikeButton extends StatefulWidget {
  bool islike=false;
  final int likes;
  LikeButton({
    this.islike,
    this.likes,
  });
  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
                          margin: EdgeInsets.only(bottom: 3, right: 3),
                          decoration: klikesdecor,
                          padding:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    widget.islike = !widget.islike;
                                  });
                                },
                                child: Icon(
                                  widget.islike
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: kb,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 3,
                                ),
                                child: Text(
                                  widget.islike
                                      ? (widget.likes + 1).toString()
                                      : widget.likes.toString(),
                                ),
                              ),
                            ],
                          ),
                        );
  }
}