import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("avatars"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 7),
            child: const CircleAvatar(
              child: Text("AM"),
              backgroundColor: Colors.amberAccent,
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2021/07/one-piece-monkey-d-luffy-2407201.jpg?itok=mxSC5pWE"),
          radius: 120.0,
        ),
      ),
    );
  }
}
