import 'package:flashcards/entities/card_entitie.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardEntitie card;

  CardWidget({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 80,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: DecoratedBox(
            decoration: BoxDecoration(
                color: const Color.fromARGB(137, 248, 248, 248),
                border:
                    Border.all(color: const Color.fromARGB(255, 109, 109, 109)),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Text(card.front,
                textAlign: TextAlign.center,
                style: const TextStyle(fontFamily: "Ubuntu", fontSize: 30))),
      ),
    );
  }
}
