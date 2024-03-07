import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:udemy_flame_game/flame_page/myFlameGame.dart';
import 'package:udemy_flame_game/flame_page/startMenu.dart';

class MyFlameGameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GameWidget(
            game: MyFlameGame(),
            errorBuilder: (context, error) => Text(error.toString()),
            loadingBuilder: (context) => const Text('Loading your game...'),
            backgroundBuilder: (context) =>
                Container(color: const Color(0xFF000045)),
            overlayBuilderMap: {
              'StartMenu': (context, MyFlameGame game) => StartMenu(game: game)
            }));
  }
}
