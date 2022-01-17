import 'package:components/screens/screens.dart';
import 'package:components/themes/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: const Image(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.theconversation.com/files/125391/original/image-20160606-13080-s7o3qu.jpg?ixlib=rb-1.1.0&rect=273%2C0%2C2639%2C1379&q=45&auto=format&w=926&fit=clip"),
            ),
          ),
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, i) => ListTile(
                title: Text(menuOptions[i].name),
                leading: Icon(menuOptions[i].icon, color: AppTheme.primary),
                onTap: () {
                  Navigator.pushNamed(context, menuOptions[i].route);
                },
              ),
              separatorBuilder: (_, __) => const Divider(),
              itemCount: menuOptions.length,
            ),
          ),
        ]),
      ),
    );
  }
}
