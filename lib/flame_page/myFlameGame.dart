import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:udemy_flame_game/component/playerShip.dart';

class MyFlameGame extends FlameGame with TapCallbacks {
  late playerShip pShip;
  late Vector2 pDirection;

  @override
  Color backgroundColor() => const Color(0xFF000045);

  @override
  FutureOr<void> onLoad() {
    add(TextComponent(
        text: "this is my new game",
        position: Vector2(size.x / 2, size.y / 2),
        anchor: Anchor.center,
        size: size));
    add(pShip = playerShip(Vector2(200, 200)));
    pDirection = pShip.position;
    return super.onLoad();
  }

  @override
  void onTapDown(TapDownEvent event) {
    Vector2 tapPosition = event.localPosition;
    pDirection = tapPosition;
    pShip.lookAt(pDirection);
    super.onTapDown(event);
  }

  @override
  void update(double dt) {
    Vector2 direction = pDirection - pShip.position;
    direction.normalize();

    pShip.position += direction * 2;
    super.update(dt);
  }

  @override
  void onRemove() {
    removeAll(children);
    processLifecycleEvents();
    Flame.images.clearCache();
    Flame.assets.clearCache();
    super.onRemove();
  }
}
