import 'package:flutter/material.dart';

import 'Components/list_title.dart';
import 'menu.dart';

class Index3_page extends StatefulWidget {
  const Index3_page({Key? key}) : super(key: key);

  @override
  _Index3_pageState createState() => _Index3_pageState();
}

class _Index3_pageState extends State<Index3_page> {
  List MusicList = [
    {
      'name': "WAP",
      'singer': "Cardi B",
      'img':
          'https://s.isanook.com/sr/0/rp/rc/w0h0/ya0xacm1w0/aHR0cDovL2pvb3gtY21zLWltYWdlLTEyNTEzMTYxNjEuZmlsZS5teXFjbG91ZC5jb20vMjAyMS8wOS8yNy9iOWVmODYzYS0xZmI4LTQzYWItODEwZi0xMzM1MTQ2OWZiMzUuanBnLzEwMDA=.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'Super Bass',
      'singer': 'Nicki Minaj',
      'img':
          'https://image.bestreview.asia/wp-content/uploads/2021/03/Super-Bass.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'ROCKSTAR',
      'singer': 'DaBaby',
      'img':
          'https://image.bestreview.asia/wp-content/uploads/2021/04/DaBaby.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'Savage Remix',
      'singer': 'Megan Thee Stallion',
      'img':
          'https://image.bestreview.asia/wp-content/uploads/2021/04/Megan-Thee-Stallion.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'The Box',
      'singer': 'Roddy Ricch',
      'img':
          'https://image.bestreview.asia/wp-content/uploads/2021/04/The-Box.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'Lil Baby',
      'singer': 'We Paid',
      'img':
          'https://image.bestreview.asia/wp-content/uploads/2021/04/We-Paid-.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'Lose Yourself',
      'singer': 'Eminem',
      'img':
          'https://image.bestreview.asia/wp-content/uploads/2021/04/lose-yourself.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'Muwop',
      'singer': 'Mulatto',
      'img':
          'https://image.bestreview.asia/wp-content/uploads/2021/04/Mulatto.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'Pussy Talk',
      'singer': 'City Girls',
      'img':
          'https://image.bestreview.asia/wp-content/uploads/2021/04/City-Girls-.jpg',
      'detail': 'Poppular',
    },
    {
      'name': 'Fancy',
      'singer': 'Iggy Azalea',
      'img':
          'https://image.bestreview.asia/wp-content/uploads/2021/04/Iggy-Azalea.jpg',
      'detail': 'Poppular'
    },
  ];
  String currentName = '';
  String currentSinger = '';
  String currentImg = '';
  String currentDetail = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
          child: Text(
            'My Memmory Music',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      drawer: Menu_page(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Row(
                children: [
                  Text(
                    'HipHop Music',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: MusicList.length,
                  itemBuilder: (context, index) => Custom(
                      onTap: () {
                        setState(() {
                          currentName = MusicList[index]['name'];
                          currentSinger = MusicList[index]['singer'];
                          currentImg = MusicList[index]['img'];
                          currentDetail = MusicList[index]['detail'];
                        });
                      },
                      name: MusicList[index]['name'],
                      singer: MusicList[index]['singer'],
                      img: MusicList[index]['img'],
                      detail: MusicList[index]['detail']))),
        ],
      ),
    );
  }
}
