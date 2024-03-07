import 'package:flutter/material.dart';
import 'package:udemy_flame_game/flame_page/myFlameGame.dart';

class StartMenu extends StatelessWidget {
  const StartMenu({super.key, required this.game});

  final MyFlameGame game;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          const Text("Start Menu"),
          FloatingActionButton(onPressed: onPressed)
        ],
      ),
    );
  }

  void onPressed() {
    game.overlays.remove('StartMenu');
    //start the game
  }
}
