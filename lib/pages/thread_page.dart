import 'package:flutter/material.dart';
import 'package:talk_it_out/constants.dart';
import 'package:talk_it_out/widgets/comments.dart';
import 'package:talk_it_out/widgets/text_list.dart';
import 'package:talk_it_out/widgets/threads.dart';

class ThreadPage extends StatefulWidget {
  final String avatar;
  final String day;
  final String text;
  final int mainlikes;
  bool like;
  bool islike = false;
  final int likes = 4;
  ThreadPage({this.avatar, this.text, this.day, this.like, this.mainlikes});

  @override
  _ThreadPageState createState() => _ThreadPageState();
}

class _ThreadPageState extends State<ThreadPage> {
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
        title: Text('Thread', style: ktitletextstyle),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 8,
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.topCenter,
                      overflow: Overflow.visible,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Comments(text().posts[0]),
                        ),
                        Positioned(
                          top: 15,
                          child: Padding(
                            padding: EdgeInsets.only(top: 10, left: 10),
                            child: Container(
                              child: Image.network(
                                text().avatars[0],
                                scale: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            child: Row(
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
                                    color: kb,
                                    size: 35,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    widget.like
                                        ? (widget.mainlikes + 1).toString()
                                        : widget.mainlikes.toString(),
                                    style: kbodytextstyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Text(
                            widget.day,
                            style: kdaystyle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Divider(
                    thickness: 15,
                    color: ke,
                  ),
                ),
                Threads(
                  islike: widget.islike,
                  postnumber: 1,
                  replyday: '7 d',
                  likesnumber: 6,
                ),
                Threads(
                  islike: widget.islike,
                  postnumber: 2,
                  replyday: '9 d',
                  likesnumber: 3,
                ),
                Threads(
                  islike: widget.islike,
                  postnumber: 3,
                  replyday: '12 d',
                  likesnumber: 5,
                ),
                Threads(
                  islike: widget.islike,
                  postnumber: 4,
                  replyday: '15 d',
                  likesnumber: 11,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top:2.5),
            color: ke,
                      child: Container(
                        color: kbackgroundcolor,
              
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15,
                        top: 10,
                        bottom: 10,right: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 10, bottom: 10, right: 0.33 * MediaQuery.of(context).size.width),
                        color: ke,
                        child: Text(
                          'Write a Comment...',
                          style: kinputtextstyle,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.send,color: kf,size: 30,),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
