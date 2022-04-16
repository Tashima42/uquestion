import 'package:flutter/material.dart';
import '../entities/deck_entitie.dart';
import '../entities/card_entitie.dart';

class DeckWidget extends StatelessWidget {
  DeckEntitie deck = DeckEntitie(
      name: "test",
      cards: [CardEntitie(front: "front", back: "back", id: 1)],
      id: 1);

  DeckWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DecoratedBox(
            decoration: BoxDecoration(
                color: const Color.fromARGB(137, 248, 248, 248),
                border:
                    Border.all(color: const Color.fromARGB(255, 109, 109, 109)),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Text(deck.name,
                textAlign: TextAlign.center,
                style: const TextStyle(fontFamily: "Ubuntu", fontSize: 30))),
      ),
    );
  }
}
