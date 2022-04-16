import 'package:flashcards/components/deck_widget.dart';
import 'package:flashcards/views/list_deck_cards_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<DeckWidget> decks = [
    DeckWidget(),
    DeckWidget(),
    DeckWidget(),
    DeckWidget(),
    DeckWidget(),
    DeckWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
            itemCount: decks.length,
            itemBuilder: (BuildContext context, index) {
              return GestureDetector(
                child: decks[index],
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ListDeckCardsView(deck: decks[index].deck)))
                },
              );
            }),
      ),
    );
  }
}
