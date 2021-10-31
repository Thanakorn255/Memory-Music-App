import 'package:flutter/material.dart';

import 'Components/list_title.dart';
import 'menu.dart';

class Index4_page extends StatefulWidget {
  const Index4_page({Key? key}) : super(key: key);

  @override
  _Index4_pageState createState() => _Index4_pageState();
}

class _Index4_pageState extends State<Index4_page> {
  List MusicList = [
    {
      'name': "เข้าฝัน",
      'singer': "แสตมป์ อภิวัชร์",
      'img':
          'https://cms.dmpcdn.com/musicarticle/2020/12/30/9d883950-4a7d-11eb-9b6d-3fdf37c2e48e_original.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'คั่นกู',
      'singer': 'ไบร์ท วชิรวิชญ์',
      'img':
          'https://cms.dmpcdn.com/musicarticle/2020/12/30/9d7dd910-4a7d-11eb-89e4-35f1a97d3869_original.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'กล่องสุ่ม',
      'singer': 'ZOM MARIE',
      'img':
          'https://cms.dmpcdn.com/musicarticle/2020/12/30/9d3389a0-4a7d-11eb-9b6d-3fdf37c2e48e_original.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'ฝนตกไหม',
      'singer': 'วง three man down',
      'img':
          'https://cms.dmpcdn.com/musicarticle/2020/12/30/9d1700f0-4a7d-11eb-9b6d-3fdf37c2e48e_original.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'หมอก',
      'singer': 'Colorpitch',
      'img':
          'https://cms.dmpcdn.com/musicarticle/2020/12/30/9c9ceef0-4a7d-11eb-89e4-35f1a97d3869_original.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'ยิ่งใกล้ยิ่งไม่รู้จัก',
      'singer': 'ว่าน ธนกฤต',
      'img':
          'https://cms.dmpcdn.com/musicarticle/2020/12/30/9c3839b0-4a7d-11eb-89e4-35f1a97d3869_original.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'คิด(แต่ไม่)ถึง',
      'singer': 'Tilly Birds',
      'img':
          'https://cms.dmpcdn.com/musicarticle/2020/12/30/9c3860c0-4a7d-11eb-9b6d-3fdf37c2e48e_original.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'รักให้ตาย',
      'singer': 'วง KLEAR',
      'img':
          'https://cms.dmpcdn.com/musicarticle/2020/12/30/9bdfb970-4a7d-11eb-9b6d-3fdf37c2e48e_original.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'ฝันถึงแฟนเก่า',
      'singer': 'วง three man down',
      'img':
          'https://cms.dmpcdn.com/musicarticle/2020/12/30/9b90af10-4a7d-11eb-89e4-35f1a97d3869_original.jpg',
      'detail': 'Poppular',
    },
    {
      'name': 'ใช่หรือเปล่า',
      'singer': 'นนท์ ธนนท์ Ft. ซินซิน',
      'img':
          'https://cms.dmpcdn.com/musicarticle/2020/12/30/9b8d0590-4a7d-11eb-89e4-35f1a97d3869_original.jpg',
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
                    'Top Pop Thai Music',
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
