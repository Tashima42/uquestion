import 'package:flashcards/views/add_card_view.dart';
import 'package:flutter/material.dart';

class AddCardWidget extends StatelessWidget {
  const AddCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AddCardView()))
      },
      child: SizedBox(
          height: 80,
          width: 80,
          child: Padding(
              padding: const EdgeInsets.all(8),
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(137, 248, 248, 248),
                      border: Border.all(
                          color: const Color.fromARGB(255, 109, 109, 109)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                      child: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 30.0,
                  ))))),
    );
  }
}
