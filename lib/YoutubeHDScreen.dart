import 'package:flutter/material.dart';
import 'package:youtube_player/youtube_player.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Youtube Exercise1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: YoutubeHDScreen(),
    );
  }
}


class YoutubeHDScreen extends StatefulWidget
{

  @override
  _YoutubeHDScreenState createState() => _YoutubeHDScreenState();

}

class _YoutubeHDScreenState extends State<YoutubeHDScreen> {

  YoutubePlayer _youtubePlayer;
  String id = "3HZwdtpYaAQ";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _youtubePlayer = YoutubePlayer(source: "https://www.youtube.com/watch?v=l4g93wv_17g", quality: YoutubeQuality.HD,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Youtube HD Screen"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              YoutubePlayer(
                context: context,
                source: "https://www.youtube.com/watch?v=l4g93wv_17g",
                aspectRatio: 16/9,
                quality: YoutubeQuality.HD,
              ),
            ],
          ),
        )
    );
  }
}