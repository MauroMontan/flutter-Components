import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  const CustomCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.all(9.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListTile(
              title: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 24),
              ),
              subtitle: const Text(
                "One Piece is a Japanese manga series written and illustrated by Eiichiro Oda. It has been serialized in Shueisha's shōnen manga magazine Weekly Shōnen Jump since July 1997, with its individual chapters compiled into 101 tankōbon volumes as of Decemb",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text("cancel"),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text("ok"),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
