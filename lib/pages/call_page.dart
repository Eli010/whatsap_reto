import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              const ListTile(
                leading: CircleAvatar(
                    backgroundColor: Color(0xff10CE5F),
                    radius: 26,
                    child: Icon(
                      Icons.link_rounded,
                      size: 30,
                      color: Colors.white,
                    )),
                title: Text("Crear enlace de llamada"),
                subtitle: Text(
                  "Comparte un enlace para tu llamada de WhatsApp",
                ),
              ),
              const ListTile(
                contentPadding: EdgeInsets.only(left: 15),
                // leading: Text("Recientes"),
                title: Text("Recientes"),
              ),
              ListView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      radius: 26,
                      backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/556069/pexels-photo-556069.jpeg?auto=compress&cs=tinysrgb&w=600",
                      ),
                    ),
                    title: const Text("Rous Analy"),
                    subtitle: Row(
                      children: const [
                        Icon(
                          Icons.arrow_back_sharp,
                          color: Color(0xff10CE5F),
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("(2) 21 de enero, 5:50 a.m.")
                      ],
                    ),
                    trailing: const Icon(
                      Icons.phone,
                      color: Color(0xff10CE5F),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.phone_forwarded_rounded,
        ),
      ),
    );
  }
}
