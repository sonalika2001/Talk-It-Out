import 'package:flutter/material.dart';
import 'package:talk_it_out/widgets/text_list.dart';
import 'package:talk_it_out/widgets/topic_section.dart';
import '../constants.dart';

class TopicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      
        children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Trending',
        style: ksubtitlestyle,
        textAlign: TextAlign.left,
      ),
    ),
    TopicSection(url:'https://cdnph.upi.com/svc/sv/upi/9011603230439/2020/1/4736c2b509af975446843762a7f6f8e3/Nearly-8-in-10-report-pandemic-is-causing-mental-health-strain.jpg',likes: 14,comments: 8,avatar: text().avatars[0],day: '15 d',text: text().posts[0],),
    Padding(
      padding: const EdgeInsets.symmetric(vertical:8.0),
      child: Divider(
        thickness: 8,
        color: ke,
      ),
    ),
    TopicSection(url:'https://cdnph.upi.com/svc/sv/upi/9011603230439/2020/1/4736c2b509af975446843762a7f6f8e3/Nearly-8-in-10-report-pandemic-is-causing-mental-health-strain.jpg',likes: 14,comments: 8,avatar: text().avatars[0],day: '15 d',text: text().posts[0],),
    Padding(
      padding: const EdgeInsets.symmetric(vertical:8.0),
      child: Divider(
        thickness: 8,
        color: ke,
      ),
    ),
    TopicSection(url:'https://cdnph.upi.com/svc/sv/upi/9011603230439/2020/1/4736c2b509af975446843762a7f6f8e3/Nearly-8-in-10-report-pandemic-is-causing-mental-health-strain.jpg',likes: 14,comments: 8,avatar: text().avatars[0],day: '15 d',text: text().posts[0],),
    Padding(
      padding: const EdgeInsets.symmetric(vertical:8.0),
      child: Divider(
        thickness: 8,
        color: ke,
      ),
    ),
        ],
      );
  }
}
