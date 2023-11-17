import 'package:flutter/material.dart';
import 'package:flutter_youapp/services/api_services.dart';
import 'package:flutter_youapp/ui/general/colors.dart';
import 'package:flutter_youapp/ui/widgets/item_filter_widgets.dart';
import 'package:flutter_youapp/ui/widgets/item_videos_widgets.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);
  APIService _apiService = APIService();

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
            SizedBox(
              height: 10.0,
            ),
            ItemVideoWidgets(),
            ItemVideoWidgets(),
            ItemVideoWidgets(),
            ItemVideoWidgets(),
            ItemVideoWidgets(),
            ItemVideoWidgets(),
          ],
        ),
      ),
    );
  }
}
