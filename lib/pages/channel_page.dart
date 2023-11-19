import 'package:flutter/material.dart';
import 'package:flutter_youapp/ui/general/colors.dart';

class ChannelPage extends StatefulWidget {
  @override
  State<ChannelPage> createState() => _ChannelPageState();
}

class _ChannelPageState extends State<ChannelPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBrandPrimaryColors,
        appBar: AppBar(
          backgroundColor: kBrandPrimaryColors,
          elevation: 0,
          title: Text("ghhhhh hhh"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.cast,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 2.7,
            tabs: [
              Tab(
                child: Text(
                  "PAGINA PRINCIPAL",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "VIDEOS",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "LISTA DE REPRODUCCION",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "COMUNIDAD",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "CANALES",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "MAS INFROMACION",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Center(
              child: Text("Pagina 1"),
            ),
            Center(
              child: Text("Pagina 2"),
            ),
            Center(
              child: Text("Pagina 3"),
            ),
            Center(
              child: Text("Pagina 4"),
            ),
            Center(
              child: Text("Pagina 5"),
            ),
            Center(
              child: Text("Pagina 6"),
            ),
          ],
        ));
  }
}
