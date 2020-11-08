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
  Threads({this.islike, this.replyday, this.postnumber, this.likesnumber});

  @override
  _ThreadsState createState() => _ThreadsState();
}

class _ThreadsState extends State<Threads> {
  @override
  Widget build(BuildContext context) {
    var horizontal1 = 0.04 * MediaQuery.of(context).size.width;
    var horizontal2 = 0.035 * MediaQuery.of(context).size.width;
    var horizontal3 = 0.055 * MediaQuery.of(context).size.width;
    var vertical = 0.025 * MediaQuery.of(context).size.width;
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
                  Padding(
                    padding: EdgeInsets.only(
                        left: horizontal2,
                        right: horizontal3,
                        top: 10,
                        bottom: 5),
                    child: Comments(text().posts[widget.postnumber]),
                  ),
                  Positioned(
                    right: 12,
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
                    padding: EdgeInsets.only(left: horizontal3, right: 10, bottom: 15),
                    child: Text(
                      widget.replyday,
                      style: kdaystyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
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
