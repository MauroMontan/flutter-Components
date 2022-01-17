import 'package:components/components/ImageCard.dart';
import 'package:components/components/card.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("card page"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: const [
            ImageCard(
                imageUrl:
                    "https://i.ytimg.com/vi/Cz2IaUR_MgU/maxresdefault.jpg"),
            CustomCard(title: "One piece"),
            CustomCard(title: "Card2"),
            CustomCard(title: "Card3"),
            CustomCard(title: "Card4"),
            CustomCard(title: "Card5"),
            CustomCard(title: "Card6"),
            CustomCard(title: "Card7"),
          ],
        ));
  }
}
