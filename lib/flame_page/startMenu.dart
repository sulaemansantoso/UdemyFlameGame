import 'package:flutter/material.dart';
import 'package:udemy_flame_game/flame_page/myFlameGame.dart';

class StartMenu extends StatelessWidget {
  const StartMenu({super.key, required this.game});

  final MyFlameGame game;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: Wrap(
          children: [
            Card(
              color: Colors.black.withAlpha(200),
              elevation: 10,
              margin: const EdgeInsets.all(20),
              child: Container(
                margin: const EdgeInsets.all(200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Start Menu",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    FloatingActionButton(
                        onPressed: onPressed, child: const Text("Start")),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPressed() {
    game.overlays.remove('StartMenu');
    //start the game
  }
}
