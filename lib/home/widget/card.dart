import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class CardSection extends StatelessWidget {
  CardSection({super.key});

  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          width: 300,
          child: FlipCard(
            fill: Fill
                .fillBack, // Fill the back side of the card to make in the same size as the front.
            direction: FlipDirection.HORIZONTAL, // default
            side: CardSide.FRONT, // The side to initially display.
            front: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/images/ice_cream_1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            back: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(237, 145, 116, 1),
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'FLAVOR: vanilla, peach, violet coulis, m&m\'s topping',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Price: 8.5 €',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        SizedBox(
          height: 300,
          width: 300,
          child: FlipCard(
            fill: Fill
                .fillBack, // Fill the back side of the card to make in the same size as the front.
            direction: FlipDirection.HORIZONTAL, // default
            side: CardSide.FRONT, // The side to initially display.
            front: Container(
              color: Colors.white,
              child: Text('Front'),
            ),
            back: Container(
              child: Text('Back'),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        SizedBox(
          height: 300,
          width: 300,
          child: FlipCard(
            fill: Fill
                .fillBack, // Fill the back side of the card to make in the same size as the front.
            direction: FlipDirection.HORIZONTAL, // default
            side: CardSide.FRONT, // The side to initially display.
            front: Container(
              color: Colors.white,
              child: Text('Front'),
            ),
            back: Container(
              child: Text('Back'),
            ),
          ),
        ),
      ],
    );
  }
}

class RaisedButton {}
