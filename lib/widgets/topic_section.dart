import 'package:flutter/material.dart';
import 'package:talk_it_out/constants.dart';
import 'package:talk_it_out/pages/comments_page.dart';

class TopicSection extends StatefulWidget {
  final String url;
  final int likes;
  final int comments;
  final String avatar;
  final String day;
  final String text;
  TopicSection({
    @required this.url,
    @required this.likes,
    @required this.comments,
    @required this.avatar,
    @required this.day,
    @required this.text,
  });
  bool like = false;
  @override
  _TopicSectionState createState() => _TopicSectionState();
}

class _TopicSectionState extends State<TopicSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          fit: StackFit.loose,
          children: [
            Image.network(
              widget.url,
              scale: 16 / 9,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 0.05 * MediaQuery.of(context).size.width),
              child: Text(
                'How has COVID-19 affected your mental health?',
                style: kimagetextstyle,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 0.1667 * MediaQuery.of(context).size.width),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.like = !widget.like;
                      print('tapped');
                    });
                  },
                  child: Icon(
                    widget.like ? Icons.favorite : Icons.favorite_border,
                    color: widget.like ? kb : ka,
                    size: 40,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  widget.like
                      ? (widget.likes + 1).toString()
                      : widget.likes.toString(),
                  style: widget.like ? kbodytextstyle2 : kbodytextstyle,
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 2 * 0.1667 * MediaQuery.of(context).size.width,
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                           return CommentsPage(url: widget.url,avatar: widget.avatar,comments: widget.comments,likes: widget.likes,like: widget.like,day: widget.day,text: widget.text,);
                         }));
                  },
                  child: Icon(
                    Icons.insert_comment,
                    color: ka,
                    size: 40,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  widget.comments.toString(),
                  style: kbodytextstyle,
                ),
              ),
            ],
          ),
        ),
        Stack(
          overflow: Overflow.visible,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 15),
                  color: ke,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        widget.text,
                        style: kbodytextstyle,
                        maxLines: 4,
                      ),
                      GestureDetector(
                        onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context){
                           return CommentsPage(url: widget.url,avatar: widget.avatar,comments: widget.comments,likes: widget.likes,like: widget.like,day: widget.day,text: widget.text,);
                         }));
                        },
                        child: Text(
                          '...Continue Reading',
                          style: kbodytextstyle2,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 2,
              left: 30,
              child: Image.network(
                widget.avatar,
                scale: 10,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 3),
          child: Text(
            widget.day,
            textAlign: TextAlign.left,
            style: kdaystyle,
          ),
        ),
        GestureDetector(
          onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context){
                           return CommentsPage(url: widget.url,avatar: widget.avatar,comments: widget.comments,likes: widget.likes,like: widget.like,day: widget.day,text: widget.text,);
                         }));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'View all 14 comments',
                style: kbodytextstyle2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
