import 'package:flutter/material.dart';
import 'package:my_app/Components/list_title.dart';
import 'package:my_app/Login-Register/home.dart';
import 'package:my_app/menu.dart';

class Index_page extends StatefulWidget {
  const Index_page({Key? key}) : super(key: key);

  @override
  _Index_pageState createState() => _Index_pageState();
}

class _Index_pageState extends State<Index_page> {
  List MusicList = [
    {
      'name': "Tech House vibes",
      'singer': "Alejandro Magaña",
      'url':
          "https://assets.mixkit.co/music/preview/mixkit-tech-house-vibes-130.mp3",
      'img':
          'https://cdn.pixabay.com/photo/2017/12/06/20/51/cd-cover-3002651__340.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'Hazy After Hours',
      'singer': 'Alejandro Magaña',
      'url':
          'https://assets.mixkit.co/music/preview/mixkit-hazy-after-hours-132.mp3',
      'img':
          'https://cdn.pixabay.com/photo/2019/07/26/16/48/music-cover-4365147__340.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'Hip Hop 02',
      'singer': 'Lily J',
      'url': 'https://assets.mixkit.co/music/preview/mixkit-hip-hop-02-738.mp3',
      'img':
          'https://cdn.pixabay.com/photo/2017/11/20/02/34/cd-cover-2964290__340.jpg',
      'detail': 'Poppular'
    },
    {
      'name': ' A Very Happy Christmas',
      'singer': 'Michael Ramir C.',
      'url':
          'https://assets.mixkit.co/music/preview/mixkit-a-very-happy-christmas-897.mp3',
      'img':
          'https://cdn.pixabay.com/photo/2017/04/05/11/46/hymnal-2204768__340.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'Sun and His Daughter',
      'singer': 'Eugenio Mininni',
      'url':
          'https://assets.mixkit.co/music/preview/mixkit-sun-and-his-daughter-580.mp3',
      'img':
          'https://cdn.pixabay.com/photo/2017/11/20/02/49/cd-cover-2964313__340.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'Raising Me Higher',
      'singer': 'Ahjay Stelino',
      'url':
          'https://assets.mixkit.co/music/preview/mixkit-raising-me-higher-34.mp3',
      'img':
          'https://cdn.pixabay.com/photo/2017/11/28/23/42/cd-cover-2984956__340.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'Serene View',
      'singer': 'Arulo',
      'url':
          'https://assets.mixkit.co/music/preview/mixkit-serene-view-443.mp3',
      'img':
          'https://cdn.pixabay.com/photo/2017/11/23/12/22/cd-cover-2972727__340.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'Deep Urban',
      'singer': 'Eugenio Mininni',
      'url': 'https://assets.mixkit.co/music/preview/mixkit-deep-urban-623.mp3',
      'img':
          'https://cdn.pixabay.com/photo/2017/11/26/14/18/cd-cover-2978927__340.jpg',
      'detail': 'Poppular'
    },
    {
      'name': 'Beautiful Dream',
      'singer': 'by Diego Nava',
      'url':
          'https://assets.mixkit.co/music/preview/mixkit-beautiful-dream-493.mp3',
      'img':
          'https://media.istockphoto.com/photos/young-beautiful-asian-girl-isolated-over-red-green-neon-light-picture-id1309277558?b=1&k=20&m=1309277558&s=170667a&w=0&h=c0cdrxoE00S1Ja58Ewg8wmLTJA55nCCGFxwavs0o2YQ=',
      'detail': 'Poppular',
    },
    {
      'name': 'Games Worldbeat',
      'singer': 'Bernardo R.',
      'url':
          'https://assets.mixkit.co/music/preview/mixkit-games-worldbeat-466.mp3',
      'img':
          'https://media.istockphoto.com/photos/contemporary-art-collage-with-antique-statue-head-in-a-surreal-style-picture-id1292919354?b=1&k=20&m=1292919354&s=170667a&w=0&h=Mzl8z3wCtMlt7oFfY54nU3ACeCDMzqQaw13rUieIAsQ=',
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
      backgroundColor: Colors.red[300],
      appBar: AppBar(
        backgroundColor: Colors.red[300],
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
