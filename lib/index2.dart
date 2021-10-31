import 'package:flutter/material.dart';

import 'Components/list_title.dart';
import 'menu.dart';

class Index2_page extends StatefulWidget {
  const Index2_page({Key? key}) : super(key: key);

  @override
  _Index2_pageState createState() => _Index2_pageState();
}

class _Index2_pageState extends State<Index2_page> {
  List MusicList = [
    {
      'name': "Despacito",
      'singer': "Luis Fonsi",
      'img':
          'https://static.billboard.com/files/media/Luis-Fonsi-Daddy-Yankee-cr-Omar-Cruz-billboard-1548-compressed.jpg',
      'detail': 'ยอดวิว : 7,100 ล้านวิว'
    },
    {
      'name': 'Shape of You',
      'singer': 'Ed Sheeran',
      'img':
          'https://thestandard.co/wp-content/uploads/2021/07/Ed-Sheeran-.jpg',
      'detail': 'ยอดวิว : 5,100 ล้านวิว'
    },
    {
      'name': 'See You Again',
      'singer': 'Wiz Khalifa',
      'img':
          'http://cdn.shopify.com/s/files/1/1023/3455/articles/wiz-1_1024x1024.jpg?v=1525408679',
      'detail': 'ยอดวิว : 4,800 ล้านวิว'
    },
    {
      'name': 'Uptown Funk',
      'singer': 'Mark Ronson',
      'img': 'https://www.out.com/sites/default/files/mark-ronsonx750.jpg',
      'detail': 'ยอดวิว : 4,000 ล้านวิว'
    },
    {
      'name': 'GANGNAM STYLE',
      'singer': 'PSY',
      'img': 'https://dudeplace.co/wp-content/uploads/2019/07/psyjpg.jpg',
      'detail': 'ยอดวิว : 3,900 ล้านวิว'
    },
    {
      'name': 'Sorry',
      'singer': 'Justin Bieber',
      'img': 'https://i.ytimg.com/vi/DK_0jXPuIr0/maxresdefault.jpg',
      'detail': 'ยอดวิว : 3,300 ล้านวิว'
    },
    {
      'name': 'Sugar',
      'singer': 'Maroon 5',
      'img': 'https://s.isanook.com/jo/0/ud/482/2412577/maroon5.jpg',
      'detail': 'ยอดวิว : 3,300 ล้านวิว'
    },
    {
      'name': 'Roar',
      'singer': 'Katy Perry',
      'img':
          'https://s.isanook.com/jo/0/rp/rc/w850h510/yatxacm1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL2pvLzAvdWQvNDg0LzI0MjMxNzcva2F0eXBlcnJ5LmpwZw==.jpg',
      'detail': 'ยอดวิว : 3,200 ล้านวิว'
    },
    {
      'name': 'Thinking Out Loud',
      'singer': 'Ed Sheeran',
      'img':
          'https://thestandard.co/wp-content/uploads/2020/09/UPDATE-Ed-Sheeran-%E0%B9%81%E0%B8%A5%E0%B8%B0%E0%B8%A0%E0%B8%A3%E0%B8%A3%E0%B8%A2%E0%B8%B2-%E0%B8%95%E0%B9%89%E0%B8%AD%E0%B8%99%E0%B8%A3%E0%B8%B1%E0%B8%9A%E0%B8%A5%E0%B8%B9%E0%B8%81%E0%B8%AA%E0%B8%B2%E0%B8%A7%E0%B8%84%E0%B8%99%E0%B9%81%E0%B8%A3%E0%B8%81-Lyra-Antarctica-Seaborn-Sheeran-%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B9%80%E0%B8%81%E0%B8%B4%E0%B8%94%E0%B9%80%E0%B8%A1%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%AA%E0%B8%B1%E0%B8%9B%E0%B8%94%E0%B8%B2%E0%B8%AB%E0%B9%8C%E0%B8%81%E0%B9%88%E0%B8%AD%E0%B8%993.jpg',
      'detail': 'ยอดวิว : 3,100 ล้านวิว',
    },
    {
      'name': 'Counting Stars',
      'singer': 'OneRepublic',
      'img':
          'https://headbangkok.com/wp-content/uploads/2021/07/onerepublicc.jpg',
      'detail': 'ยอดวิว : 3,100 ล้านวิว'
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
            'My Memory Music',
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
                    'Top International Music',
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
