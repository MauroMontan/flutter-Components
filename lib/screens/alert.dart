import 'package:components/themes/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void display(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "cancelar",
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("aceptar")),
            ],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            title: const Text(
              "hello",
              textAlign: TextAlign.center,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  "uring a flex layout, available space along the main axis is allocated to children. After allocating space, there might be some remaining free space. This value controls whether to maximize or minimize the amount of free space, subject to the incoming layout constrai",
                  style: TextStyle(),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          elevation: 0,
          child: const Icon(Icons.close),
          backgroundColor: AppTheme.primary,
          onPressed: () {
            Navigator.pop(context);
          }),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: AppTheme.primary,
                elevation: 0,
                shape: const StadiumBorder()),
            onPressed: () {
              display(context);
            },
            child: const Text("Mostrar alerta"),
          ),
        ),
      ),
    );
  }
}
