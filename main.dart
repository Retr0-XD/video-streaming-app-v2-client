import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Color.fromARGB(0, 12, 12, 12)),
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Video Streaming App 😎 V2.0.1',
      home: VideoApp(),
    );
  }
}

double ht = 0, wdt = 0.0;

class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  List videos = [
    'http://192.168.92.84:9000/video1',
    'http://192.168.92.84:9000/video2',
    'http://192.168.92.84:9000/video3',
    'http://192.168.92.84:9000/video4',
    'http://192.168.92.84:9000/video5',
    'http://192.168.92.84:9000/video6',
  ];

  List images = [
    'http://192.168.92.84:9000/video1_img',
    'http://192.168.92.84:9000/video2_img',
    'http://192.168.92.84:9000/video3_img',
    'http://192.168.92.84:9000/video4_img',
    'http://192.168.92.84:9000/video5_img',
    'http://192.168.92.84:9000/video6_img',
  ];
  List titles = [
    'Ponniyin selvan pt.1',
    'DMC5',
    'AC Origins',
    'GTA V ',
    'MK11',
    'Vegeta',
  ];
  List description = [
    'discussing who called jayam ravi to act?',
    'Dante na Moss',
    'Bayek of Siwa , best game..',
    'All time chad game from 2013',
    "Who's Next?",
    'Cant defeat you? dont make me laugh! \n\n\n                   \t         𝘽𝙮 𝙍𝙚𝙩𝙧0',
    const Text("hello"),
  ];
  List times = [
    '2:10',
    '3:12',
    '5:15',
    '3:22',
    '5:21',
    '0:20',
  ];

  static String xp = 'DJKBVEKJB';

  @override
  Widget build(BuildContext context) {
    ht = MediaQuery.of(context).size.height / 1000;
    wdt = MediaQuery.of(context).size.width / 1000;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        brightness: Brightness.light,
        title: Text(
          'Video Streaming App v2.0.1',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          const Text("by sakthi harish 😏");
          print(xp);
          return Column(
            children: [
              GestureDetector(
                child: Stack(
                  children: [
                    Image.network(
                      images[index],
                      height: 280 * ht,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      bottom: 20 * ht,
                      right: 40 * wdt,
                      child: Container(
                        padding: EdgeInsets.all(5 * ht),
                        color: Colors.grey[900],
                        child: Text(
                          times[index],
                          style: TextStyle(
                            color: Colors.grey[50],
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  setState(
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Videos(
                            imageS: images[index],
                            videoS: videos[index],
                            titleS: titles[index],
                            descriptionS: description[index],
                            image: images,
                            video: videos,
                            title: titles,
                            description: description,
                            time: times,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              rows(images[index], titles[index], description[index], Text(xp)),
            ],
          );
        },
      ),
    );
  }

  Widget rows(img, tlt, desc, Text text) {
    return Row(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 15 * wdt, vertical: 10 * ht),
          child: Container(
            height: 50 * ht,
            width: 50 * ht,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
              image: DecorationImage(
                image: NetworkImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tlt,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 3 * ht,
            ),
            Text(desc),
          ],
        ),
        //RichText(text: TextSpan(text: 'by retr0'))
      ],
    );
  }
}

class Videos extends StatefulWidget {
  final String imageS, videoS, titleS, descriptionS;
  final List image, video, title, description, time;
  const Videos({
    required this.imageS,
    required this.videoS,
    required this.titleS,
    required this.descriptionS,
    required this.image,
    required this.video,
    required this.title,
    required this.description,
    required this.time,
  });
  @override
  _VideosState createState() => _VideosState(
        imageS: this.imageS,
        videoS: this.videoS,
        titleS: this.titleS,
        descriptionS: this.descriptionS,
        images: this.image,
        videos: this.video,
        titles: this.title,
        descriptions: this.description,
        times: this.time,
      );
}

class _VideosState extends State<Videos> {
  String imageS, videoS, titleS, descriptionS;
  List images, videos, titles, descriptions, times;
  _VideosState({
    required this.imageS,
    required this.videoS,
    required this.titleS,
    required this.descriptionS,
    required this.images,
    required this.videos,
    required this.titles,
    required this.descriptions,
    required this.times,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.grey[900],
        brightness: Brightness.dark,
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayer.network(videoS),
          ),
          rows(imageS, titleS, descriptionS, Text("by retr0")),
          Divider(
            color: Colors.grey[300],
            height: 2 * ht,
            thickness: 2,
          ),
          SizedBox(
            height: 20 * ht,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return images[index] == imageS
                    ? Container()
                    : Column(
                        children: [
                          GestureDetector(
                            child: Stack(
                              children: [
                                Image.network(
                                  images[index],
                                  height: 280 * ht,
                                  width: double.infinity,
                                  fit: BoxFit.fill,
                                ),
                                Positioned(
                                  bottom: 20 * ht,
                                  right: 40 * wdt,
                                  child: Container(
                                    padding: EdgeInsets.all(5 * ht),
                                    color: Colors.grey[900],
                                    child: Text(
                                      times[index],
                                      style: TextStyle(
                                        color: Colors.grey[50],
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              setState(() {
                                imageS = images[index];
                                videoS = videos[index];
                                titleS = titles[index];
                                descriptionS = descriptions[index];
                              });
                            },
                          ),
                          rows(images[index], titles[index],
                              descriptions[index], Text("by retr0")),
                          SizedBox(height: 10 * ht),
                        ],
                      );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget rows(img, tlt, desc, Text text) {
    return Row(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 15 * wdt, vertical: 10 * ht),
          child: Container(
            height: 50 * ht,
            width: 50 * ht,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
              image: DecorationImage(
                image: NetworkImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tlt,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 3 * ht,
            ),
            Text(desc),
          ],
        )
      ],
    );
  }
}
