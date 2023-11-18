import 'package:flutter/material.dart';
import 'package:flutter_youapp/ui/general/colors.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoDetailPage extends StatefulWidget {
  String videoId;
  VideoDetailPage({
    required this.videoId,
  });

  @override
  State<VideoDetailPage> createState() => _VideoDetailPageState();
}

class _VideoDetailPageState extends State<VideoDetailPage> {
  late YoutubePlayerController _playerController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _playerController = YoutubePlayerController(
        initialVideoId: widget.videoId,
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
          hideControls: false,
        ));
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kBrandPrimaryColors,
      body: Column(
        children: [
          SizedBox(
            height: height * 0.35,
            child: YoutubePlayer(
              controller: _playerController,
              progressColors: ProgressBarColors(
                playedColor: Colors.red,
                handleColor: Colors.red,
                bufferedColor: Colors.white54,
                backgroundColor: Colors.white.withOpacity(0.1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
