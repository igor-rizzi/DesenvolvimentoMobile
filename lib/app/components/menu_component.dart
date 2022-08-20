import 'package:first_app/app/pages/counter_page.dart';
import 'package:first_app/app/pages/galery_page.dart';
import 'package:first_app/app/pages/home_page.dart';
import 'package:first_app/app/pages/list_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Menu(BuildContext context)
{
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Menu'),
        ),
        ListTile(
          title: const Text('Home Page'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage(title: 'My Home Page'))
            );
          },
        ),
        ListTile(
          title: const Text('Counter Page'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CounterPage(title: 'My Counter Page'))
            );
          },
        ),
        ListTile(
          title: const Text('List Page'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListPage(title: 'My List Names'))
            );
          },
        ),
        ListTile(
          title: const Text('Gallery Page'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GaleryPage(title: 'My Gallery'))
            );
          },
        ),
      ],
    ),
  );
}