import 'package:Video_Player/local/chewie_prep/chewie_list_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class Network extends StatefulWidget {
  @override
  _NetworkState createState() => _NetworkState();
}

class _NetworkState extends State<Network> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Video Player - Network',
          style: GoogleFonts.raleway(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
            ),
          ),
        ],
      ),
    );
  }
}