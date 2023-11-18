import 'package:flutter/material.dart';
import 'package:flutter_youapp/models/video_model.dart';
import 'package:flutter_youapp/services/api_services.dart';
import 'package:flutter_youapp/ui/general/colors.dart';
import 'package:flutter_youapp/ui/widgets/item_filter_widgets.dart';
import 'package:flutter_youapp/ui/widgets/item_videos_widgets.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //const HomePage({Key? key}) : super(key: key);
  final APIService _apiService = APIService();
  List<VideoModel> videos = [];
  initState() {
    super.initState();
    getData();
  }

  getData() {
    _apiService.getVideos().then((value) {
      videos = value;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    _apiService.getVideos;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 0,
        ),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: kBrandSecondaryColors,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                    ),
                    icon: const Icon(
                      Icons.explore_outlined,
                    ),
                    label: const Text(
                      "Explorar",
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                    child: VerticalDivider(
                      color: kBrandSecondaryColors,
                      thickness: 1.0,
                    ),
                  ),
                  ItemFilterWidgets(
                    text: "Todos",
                    isSelected: true,
                  ),
                  ItemFilterWidgets(
                    text: "Mixes",
                    isSelected: false,
                  ),
                  ItemFilterWidgets(
                    text: "Musica",
                    isSelected: false,
                  ),
                  ItemFilterWidgets(
                    text: "Programacion",
                    isSelected: false,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: videos.length,
              itemBuilder: (BuildContext context, int index){
                return ItemVideoWidgets(
                  videoModel: videos[index],
                );
              }
            )
          ],
        ),
      ),
    );
  }
}
