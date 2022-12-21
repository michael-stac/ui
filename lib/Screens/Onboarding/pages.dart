import 'package:flutter/material.dart';

class Pages extends StatefulWidget {
  final String? description;
  final String? imagePath;
  final String? title;
  Pages({this.description, this.title, this.imagePath, Key? key})
      : super(key: key);
  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),

        ///Title
        Container(
          alignment: Alignment.center,
          child: Text(
            widget.title!,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                color: Colors.green,
                fontFamily: 'Audiowide'),
          ),
        ),
        //Description
        Container(
          alignment: Alignment.center,
          child: Text(
            widget.description!,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
