import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: YoutuebLiveScreen(title: 'Youtube Live Vide Demo'),
    );
  }
}

class YoutuebLiveScreen extends StatefulWidget {
  YoutuebLiveScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _YoutuebLiveScreenState createState() => _YoutuebLiveScreenState();
}

class _YoutuebLiveScreenState extends State<YoutuebLiveScreen>
{

  String liveVideoURL = "https://www.youtube.com/watch?v=bLwUoYGU6sU";


  YoutubePlayerController _liveVideoController;

  @override
  void initState() {
    // TODO: implement initState


    _liveVideoController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(liveVideoURL),
        flags: YoutubePlayerFlags(
            autoPlay: true,
            mute: true,
            isLive: true

        )
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Youtube Live'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              YoutubePlayer(
                controller: _liveVideoController,
              )
            ],
          ),
        ),
      ),
    );
  }

}