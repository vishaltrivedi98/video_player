import 'package:Video_Player/local/chewie_prep/chewie_list_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class Local extends StatefulWidget {
  @override
  _LocalState createState() => _LocalState();
}

class _LocalState extends State<Local> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Video Player - Local',
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
            videoPlayerController: VideoPlayerController.asset(
              'assets/video/taaron ke shehar.mp4',
            ),
            looping: false,
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/video/Naina.mp4',
            ),
            looping: false,
          ),
        ],
      ),
    );
  }
}