import 'package:flutter/material.dart';
import 'package:talk_it_out/pages/thread_page.dart';
import 'package:talk_it_out/widgets/avatars.dart';
import 'package:talk_it_out/widgets/comments.dart';
import 'package:talk_it_out/widgets/like_button.dart';
import 'package:talk_it_out/widgets/text_list.dart';
import '../constants.dart';

class CommentsSection extends StatefulWidget {
  final String avatar;
  final String day;
  final String text;
  final int mainlikes;
  bool like;
  bool islike = false;
  final int likes = 4;
  CommentsSection(
      {this.avatar, this.text, this.day, this.like, this.mainlikes});
  @override
  _CommentsSectionState createState() => _CommentsSectionState();
}

class _CommentsSectionState extends State<CommentsSection> {
  @override
  Widget build(BuildContext context) {
    var horizontal1 = 0.04*MediaQuery.of(context).size.width;
    var horizontal2 = 0.035*MediaQuery.of(context).size.width;
    var horizontal3 = 0.055*MediaQuery.of(context).size.width;
    var  vertical= 0.025*MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(top: 30, left: horizontal2),
                child: Container(
                  child: Image.network(
                    widget.avatar,
                    scale: 10,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    overflow: Overflow.visible,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: horizontal2, right: horizontal3, top: 28, bottom: 15),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 20, bottom: 15),
                            color: ke,
                            child: Text(
                              widget.text,
                              style: kbodytextstyle,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right:12,
                        bottom: 5,
                        child: LikeButton(
                          islike: widget.islike,
                          likes: 4,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: horizontal3),
                    child: Text(
                      widget.day,
                      textAlign: TextAlign.left,
                      style: kdaystyle,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ThreadPage(
                            avatar: widget.avatar,
                            day: widget.day,
                            text: widget.text,
                            mainlikes: widget.mainlikes,
                            like: widget.like);
                      }));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 0.2 * MediaQuery.of(context).size.width,
                          top: 10),
                      child: Text(
                        'View all 4 replies',
                        style: kbodytextstyle2,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Avatars(text().avatars[1]),
                      Expanded(
                        flex: 6,
                        child: Column(
                          children: [
                            Stack(
                              overflow: Overflow.visible,
                              alignment: Alignment.bottomRight,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
          left: horizontal2, right: horizontal3, top: 10, bottom: 5),
                                  child: Comments(text().posts[1]),
                                ),
                                Positioned(
                                  
                                  right: 12,
                                  bottom: -5,
                                  child: LikeButton(
                                    islike: widget.islike,
                                    likes: 2,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Avatars(text().avatars[2]),
                      Expanded(
                        flex: 6,
                        child: Column(
                          children: [
                            Stack(
                              overflow: Overflow.visible,
                              alignment: Alignment.bottomRight,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
          left: horizontal2, right: horizontal3, top: 10, bottom: 5),
                                  child: Comments(text().posts[2]),
                                ),
                                Positioned(
                                  right: 12,
                                  bottom: -5,
                                  child: LikeButton(
                                    islike: widget.islike,
                                    likes: 6,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ThreadPage(
                            avatar: widget.avatar,
                            day: widget.day,
                            text: widget.text,
                            mainlikes: widget.mainlikes,
                            like: widget.like);
                      }));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 0.2 * MediaQuery.of(context).size.width,
                          top: vertical,bottom: vertical),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          padding: EdgeInsets.all(1),
                          color: kc,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              padding: EdgeInsets.only(
                                  top: 10, left: 10, bottom: 10, right: 0.28 * MediaQuery.of(context).size.width),
                              color: kbackgroundcolor,
                              child: Text(
                                'Write a Reply...',
                                style: kinputtextstyle,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
