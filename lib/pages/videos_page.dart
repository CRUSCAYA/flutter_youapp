import 'package:flutter/material.dart';
import 'package:flutter_youapp/models/video_model.dart';
import 'package:flutter_youapp/services/api_services.dart';
import 'package:flutter_youapp/ui/general/colors.dart';

class VideosPage extends StatefulWidget {
  @override
  _VideoListScreenState createState() => _VideoListScreenState();
}

class _VideoListScreenState extends State<VideosPage> {
  final APIService apiService = APIService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandPrimaryColors,
      body: FutureBuilder<List<VideoModel>>(
        future: apiService.getVideos(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No hay videos disponibles.'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final video = snapshot.data![index];

                return ListTile(
                    title: Text(
                      video.snippet.title,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      video.snippet.channelTitle,
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                    leading:
                        Image.network(video.snippet.thumbnails.high.url));
              },
            );
          }
        },
      ),
    );
  }
}
