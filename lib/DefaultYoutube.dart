import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Youtube Exercise1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultYoutube(title: 'Default Youtube Flutter'),
    );
  }
}


class DefaultYoutube extends StatefulWidget
{
  DefaultYoutube({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DefaultYoutubeState createState() => _DefaultYoutubeState();

}

class _DefaultYoutubeState extends State<DefaultYoutube>
{

  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: '3HZwdtpYaAQ', // id youtube video
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("YoutubeText"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}