import 'package:codigo6_whatsapp/pages/call_page.dart';
import 'package:codigo6_whatsapp/pages/chat_page.dart';
import 'package:codigo6_whatsapp/pages/status_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

//para usa nuestro tabBar necesitamos usar un mixin
class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //late= sera inicializado luego
  //length = la cantidad de vistas,para usar necesitamos inicializarlo vsync=
  late TabController myTabController;
  @override
  void initState() {
    super.initState();
    print("INITTT");
    myTabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    print("BUILDDDDDDDD");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
        bottom: TabBar(
          controller: myTabController,
          //color de la linea inferior
          indicatorColor: Colors.white,
          //tamaño de la linea inferior
          indicatorWeight: 3.5,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.people_rounded,
              ),
            ),
            Tab(
              child: Text(
                "CHATS",
              ),
            ),
            Tab(
              child: Text(
                "STATUS",
              ),
            ),
            Tab(
              child: Text(
                "CALLS",
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: myTabController,
        children: const [
          Tab(
            text: "Comunidad",
          ),
          ChatPage(),
          StatusPage(),
          CallPage(),
        ],
      ),
    );
  }
}
