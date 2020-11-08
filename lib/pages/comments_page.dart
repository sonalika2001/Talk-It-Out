import 'package:flutter/material.dart';
import 'package:talk_it_out/widgets/comments_section.dart';
import 'package:talk_it_out/widgets/custom_scroll.dart';
import 'package:talk_it_out/widgets/filters.dart';

class CommentsPage extends StatefulWidget {
  final String url;
  final int likes;
  final int comments;
  final String avatar;
  final String day;
  final String text;
  bool like;
  CommentsPage(
      {this.url,
      this.likes,
      this.avatar,
      this.comments,
      this.day,
      this.text,
      this.like});

  @override
  _CommentsPageState createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.only(top: 0.06 * MediaQuery.of(context).size.height),
          child: Scaffold(
        body: CustomScrollView(slivers: <Widget>[
          CustomScroll(
            likes: widget.likes,
            like: widget.like,
            url: widget.url,
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Filters();
            },
            childCount: 1,
            ),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return CommentsSection(avatar:widget.avatar,text:widget.text,day:widget.day,mainlikes:widget.likes,like:widget.like);
            },
            childCount: 3,
            ),
          ),

          
        ]),
      ),
    );
  }
}
