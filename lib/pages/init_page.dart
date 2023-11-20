import 'package:flutter/material.dart';
import 'package:flutter_youapp/pages/home_pages.dart';
import 'package:flutter_youapp/ui/general/colors.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  int _currentIndex = 0;
  List<Widget> _pages = [
    HomePage(),
     Center(
      child: Text("Short"),
    ),
    Center(
      child: Text("Agregar"),
    ),
    Center(
      child: Text("Suscripciones"),
    ),
    Center(
      child: Text("Biblioteca"),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandPrimaryColors,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBrandPrimaryColors,
        title: Image.asset(
          "assets/images/logo.png",
          height: 26.0,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.cast,
              color: Colors.white,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Stack(
                clipBehavior: Clip.none,
                children: [
                  const Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                  ),
                  Positioned(
                    top: -2,
                    right: -4,
                    child: Container(
                      padding: const EdgeInsets.all(2.4),
                      decoration:const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                        
                      ),
                      child: Text("9+",style: TextStyle(fontSize:10.0 ),),
                    ),
                  )
                ],
              )
              ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 6.0,
          ),
          const CircleAvatar(
            backgroundColor: Colors.white12,
            radius: 14.0,
            backgroundImage: AssetImage("assets/images/perfil.png"),
          ),
          const SizedBox(
            width: 12.0,
          )
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kBrandPrimaryColors,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        selectedFontSize: 12.0,
        unselectedFontSize: 12.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int value) {
          _currentIndex = value;
          setState(() {});
        },
        items: [
          const BottomNavigationBarItem(
              label: "Principal",
              icon: Icon(
                Icons.home_filled,
              )),
          const BottomNavigationBarItem(
              label: "Shorts",
              icon: Icon(
                Icons.play_circle_filled,
              )),
          BottomNavigationBarItem(
              label: "",
              icon: Container(
                margin: const EdgeInsets.only(top: 4.0),
                child: const Icon(
                  Icons.add_circle_outline_rounded,
                  size: 30.0,
                ),
              )),
          const BottomNavigationBarItem(
              label: "Suscripciones",
              icon: Icon(
                Icons.subscriptions_rounded,
              )),
          const BottomNavigationBarItem(
              label: "Biblioteca",
              icon: Icon(
                Icons.video_collection_rounded,
              )),
        ],
      ),
    );
  }
}
