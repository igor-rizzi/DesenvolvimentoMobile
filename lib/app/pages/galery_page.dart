import 'package:first_app/app/components/menu_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GaleryPage extends StatefulWidget {
  const GaleryPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<GaleryPage> createState() => _GaleryPageState();
}

class _GaleryPageState extends State<GaleryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Menu(context),
        body: Column(
          children: [
            Container(
              child: Image.network('https://picsum.photos/250?image=9'),
            ),
            Container(
              child: Image.asset('coke.png'),
            )
          ],
        ));
  }
}
