import 'dart:async';
import 'dart:js_interop';

import 'package:flame/components.dart';
import 'package:flame/particles.dart';

class playerShip extends SpriteComponent with HasGameRef {
  playerShip(position) : super(position: position) {
    size = Vector2(50, 50);
  }

  @override
  Future<FutureOr<void>> onLoad() async {
    sprite = await game.loadSprite('playerShip1_blue.png');
    anchor = Anchor.center;

    add(TextComponent(
        text: "My Ship", anchor: Anchor.center, position: Vector2(25, -20)));
  }

  @override
  void update(double dt) {
    // angle += 0.01;

    super.update(dt);
  }
}
