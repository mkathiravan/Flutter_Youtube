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
      home: MyHomePage(title: 'Youtube Player Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
  String videoURL = "https://www.youtube.com/watch?v=RVxYdy_jbMs&list=RDRVxYdy_jbMs&start_radio=1";

  String videoURL1 = "https://www.youtube.com/watch?v=l4g93wv_17g";

  YoutubePlayerController _controller;

  YoutubePlayerController _controller1;

  @override
  void initState() {
    // TODO: implement initState

    _controller = YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(videoURL));

    _controller1 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoURL1),
      flags: YoutubePlayerFlags(
        autoPlay: true,
      )
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Youtube Player'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
              ),
              SizedBox(
                height: 20,
              ),
              YoutubePlayer(
                controller: _controller1,
                showVideoProgressIndicator: true,
              )
            ],
          ),
        ),
      ),
    );
  }

}