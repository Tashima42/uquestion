import 'dart:async';

import 'package:flashcards/repositories/card_repository.dart';
import 'package:flashcards/repositories/deck_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Repositories {
  static late final CardRepository cardRepository;
  static late final DeckRepository deckRepository;
  late List<String> _migrations;
  static const databasePath = 'uquestion.db';

  Repositories() {
    _migrations = [
      "CREATE TABLE cards (id INTEGER PRIMARY KEY, front TEXT, back TEXT)",
      "CREATE TABLE decks (id INTEGER PRIMARY KEY, name TEXT)",
      "CREATE TABLE cards_decks (id INTEGER PRIMARY KEY, card INTEGER, deck INTEGER)",
    ];
  }

  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    final database = openDatabase(join(await getDatabasesPath(), databasePath),
        onCreate: (db, version) {
      executeMigrations(db);
    }, version: 1);

    cardRepository = CardRepository(db: database);
  }

  void executeMigrations(db) {
    for (var migration in _migrations) {
      db.execute(migration);
    }
  }
}
