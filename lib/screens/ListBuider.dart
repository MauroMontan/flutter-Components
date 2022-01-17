import 'dart:math';

import 'package:flutter/material.dart';

class ListBUilderScreen extends StatefulWidget {
  ListBUilderScreen({Key? key}) : super(key: key);

  @override
  State<ListBUilderScreen> createState() => _ListBUilderScreenState();
}

class _ListBUilderScreenState extends State<ListBUilderScreen> {
  final List<int> imagesids = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      print(
          "${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}");

      if ((scrollController.position.pixels + 100) >=
          scrollController.position.maxScrollExtent) {
        add10();
      }
    });
  }

  void add10() {
    final lastId = imagesids.last;
    imagesids.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));

    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 3));
    imagesids.clear();
    imagesids.addAll([
      50,
      30,
      56,
      23,
      18,
      40,
    ]);
    add10();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeLeft: true,
        removeBottom: true,
        child: RefreshIndicator(
          backgroundColor: Colors.amberAccent,
          color: Colors.white,
          onRefresh: onRefresh,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            controller: scrollController,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return FadeInImage(
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
                placeholder: const AssetImage("assets/jar-loading.gif"),
                image: NetworkImage(
                    "https://picsum.photos/500/300?image=${imagesids[index]}"),
              );
            },
          ),
        ),
      ),
    );
  }
}
