import 'package:components/models/menu_opts.dart';
import 'package:components/screens/Avatar.dart';
import 'package:components/screens/ListBuider.dart';
import 'package:components/screens/alert.dart';
import 'package:components/screens/animated.dart';
import 'package:components/screens/card.dart';
import 'package:components/screens/inputs.dart';
import 'package:components/screens/listview1.dart';
import 'package:components/screens/home.dart';
import 'package:components/screens/slider.dart';
import 'package:flutter/material.dart';

final menuOptions = <MenuOption>[
  MenuOption(
      route: "listview",
      icon: Icons.list,
      name: "Listview",
      screen: const ListViewScreen()),
  MenuOption(
      route: "cardview",
      icon: Icons.card_giftcard,
      name: "Card view",
      screen: const CardScreen()),
  MenuOption(
      route: "alerts",
      icon: Icons.add_alert,
      name: "Alert",
      screen: const AlertScreen()),
  MenuOption(
      route: "avatarts",
      icon: Icons.account_circle,
      name: "Avatars",
      screen: const AvatarScreen()),
  MenuOption(
      route: "Animated",
      icon: Icons.play_circle,
      name: "animated",
      screen: const AnimatedScreen()),
  MenuOption(
      route: "inputs",
      icon: Icons.input_outlined,
      name: "Inputs",
      screen: const InputsScreen()),
  MenuOption(
      route: "sliders",
      icon: Icons.slow_motion_video_outlined,
      name: "Sliders",
      screen: const SliderScreen()),
  MenuOption(
      route: "listbuilder",
      icon: Icons.list,
      name: "listBuilder",
      screen: ListBUilderScreen()),
];

Map<String, WidgetBuilder> routes() {
  Map<String, WidgetBuilder> _routes = {};

  _routes.addAll({"home": (BuildContext context) => const HomeScreen()});

  for (final option in menuOptions) {
    _routes.addAll({option.route: (BuildContext context) => option.screen});
  }

  return _routes;
}
