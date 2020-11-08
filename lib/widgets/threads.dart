import 'package:flutter/material.dart';
import 'package:talk_it_out/widgets/text_list.dart';

import '../constants.dart';
import 'avatars.dart';
import 'comments.dart';
import 'like_button.dart';

class Threads extends StatefulWidget {
  final String replyday;
  final bool islike;
  final int postnumber;
  final int likesnumber;
  Threads({this.islike,this.replyday,this.postnumber,this.likesnumber});
  
  @override
  _ThreadsState createState() => _ThreadsState();
}

class _ThreadsState extends State<Threads> {
  @override
  Widget build(BuildContext context) {
    return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Avatars(text().avatars[widget.postnumber]),
                    Expanded(
                      flex: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            overflow: Overflow.visible,
                            alignment: Alignment.bottomRight,
                            children: [
                              Comments(text().posts[widget.postnumber]),
                              Positioned(
                                right: 8,
                                bottom: -5,
                                child: LikeButton(
                                  islike: widget.islike,
                                  likes: widget.likesnumber,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20, right: 10,bottom: 15),
                                child: Text(
                                  widget.replyday,
                                  style: kdaystyle,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom:15),
                                child: Icon(
                                  Icons.reply,
                                  color: kc,

                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
  }
}