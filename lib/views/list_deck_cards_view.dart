import 'package:flashcards/components/add_card_widget.dart';
import 'package:flashcards/components/card_widget.dart';
import 'package:flutter/material.dart';

import '../entities/deck_entitie.dart';

class ListDeckCardsView extends StatelessWidget {
  DeckEntitie deck;
  late List<CardWidget> cards;

  ListDeckCardsView({Key? key, required this.deck}) : super(key: key) {
    cards = _generateCardWidgetsFromDeck();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: [const AddCardWidget(), ...cards],
    ));
  }

  List<CardWidget> _generateCardWidgetsFromDeck() {
    return deck.cards.map((card) => CardWidget(card: card)).toList();
  }
}
