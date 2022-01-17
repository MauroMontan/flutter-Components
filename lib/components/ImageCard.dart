import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String imageUrl;

  const ImageCard({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shadowColor: Colors.purple.withOpacity(1.0),
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            FadeInImage(
                placeholder: const AssetImage("assets/jar-loading.gif"),
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl)),
            Container(
              padding: const EdgeInsets.all(7),
              alignment: AlignmentDirectional.centerEnd,
            ),
          ],
        ),
      ),
    );
  }
}
