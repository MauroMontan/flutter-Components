import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  final options = const <String>[
    "MEGAMAN",
    "SUPER SMASH",
    "MOONLIGTHER",
    "GTA 5"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text('Material App Bar'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(options[index]),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.blueGrey,
                ),
                onTap: () {},
              );
            },
            separatorBuilder: (context, index) => const Divider(),
            itemCount: options.length));
  }
}
