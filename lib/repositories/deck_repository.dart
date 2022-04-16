import 'package:flashcards/entities/deck_entitie.dart';

abstract class DeckRepository {
  Future<void> insert(DeckEntitie deck);
}
