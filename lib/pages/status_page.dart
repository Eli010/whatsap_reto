import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            // autofocus: true,
            backgroundColor: const Color(0xffD9DDE0),
            onPressed: () {},
            child: const Icon(
              Icons.edit,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            // autofocus: true,
            // backgroundColor: const Color(0xff02A783),
            onPressed: () {},
            child: const Icon(Icons.camera_alt),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xff656F78),
                radius: 35,
                child: CircleAvatar(
                  radius: 26,
                  backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/1043331/pexels-photo-1043331.jpeg?auto=compress&cs=tinysrgb&w=600",
                  ),
                ),
              ),
              title: Text("Mi estado"),
              subtitle: Text("Hoy, 11:54 a.m."),
              trailing: Icon(Icons.more_horiz),
            ),
            const ListTile(
              contentPadding: EdgeInsets.only(left: 30),
              // leading: Text("Recientes"),
              title: Text("Recientes"),
            ),
            ListView.builder(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 35,
                    child: CircleAvatar(
                      radius: 26,
                      backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/556069/pexels-photo-556069.jpeg?auto=compress&cs=tinysrgb&w=600",
                      ),
                    ),
                  ),
                  title: Text("Rous Analy"),
                  subtitle: Text("Hoy, 1:54 a.m."),
                );
              },
            ),
            const ListTile(
              contentPadding: EdgeInsets.only(left: 30),
              // leading: Text("Recientes"),
              title: Text("Vistos"),
            ),
            ListView.builder(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xff656F78),
                    radius: 35,
                    child: CircleAvatar(
                      radius: 26,
                      backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/4471894/pexels-photo-4471894.jpeg?auto=compress&cs=tinysrgb&w=600",
                      ),
                    ),
                  ),
                  title: Text("Rous Analy"),
                  subtitle: Text("Hoy, 1:54 a.m."),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
