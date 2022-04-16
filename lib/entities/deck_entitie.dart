import 'card_entitie.dart';

class DeckEntitie {
  final String name;
  final List<CardEntitie> cards;
  final int id;

  DeckEntitie({required this.name, required this.cards, required this.id});

  void addCard(CardEntitie card) {
    cards.add(card);
  }
}
