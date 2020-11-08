import 'package:flutter/material.dart';

class Avatars extends StatelessWidget {
  final String avatar;
  Avatars(this.avatar);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10, left: 10),
        child: Container(
    child: Image.network(
      avatar,
      scale: 10,
    ),
        ),
      );
  }
}
