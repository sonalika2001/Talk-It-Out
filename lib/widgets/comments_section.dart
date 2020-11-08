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
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 10),
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
                        padding: const EdgeInsets.only(
                            left: 10, right: 20, top: 28, bottom: 15),
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
                        right: 8,
                        bottom: 5,
                        child: LikeButton(
                          islike: widget.islike,
                          likes: 4,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
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
                                Comments(text().posts[1]),
                                Positioned(
                                  
                                  right: 8,
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
                                Comments(text().posts[2]),
                                Positioned(
                                  right: 8,
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
                          top: 10,bottom: 10),
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
