import 'package:flutter/material.dart';
import 'package:my_app/Login-Register/home.dart';
import 'package:my_app/menu.dart';

class Index_page extends StatefulWidget {
  const Index_page({Key? key}) : super(key: key);

  @override
  _Index_pageState createState() => _Index_pageState();
}

class _Index_pageState extends State<Index_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      drawer: Menu_page(),
    );
  }
}
