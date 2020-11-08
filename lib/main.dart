import 'package:flutter/material.dart';
import 'package:talk_it_out/initial_screen.dart';
import 'package:talk_it_out/pages/comments_page.dart';
import 'package:talk_it_out/pages/info_page.dart';
import 'package:talk_it_out/pages/notification_page.dart';
import 'package:talk_it_out/pages/thread_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
     debugShowCheckedModeBanner: false,
     initialRoute: '/',
     routes: {
       '/': (context)=>InitialScreen(),
       '/one': (context)=>CommentsPage(),
       '/two':(context)=>ThreadPage(),
       '/extraone':(context)=>InfoPage(),
       '/extratwo':(context)=>NotificationPage(),
     },
    );
  }
}

