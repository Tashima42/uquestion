import 'package:flashcards/entities/card_entitie.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sql.dart';

import 'card_repository.dart';

class CardRepository {
  final db;
  static const tableName = 'cards';

  CardRepository({required this.db});

  Future<void> insert(CardEntitie card) async {
    await db.insert(tableName, toMap(card),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Map<String, dynamic> toMap(CardEntitie card) {
    return {
      'id': card.id,
      'front': card.front,
      'back': card.back,
    };
  }
}
