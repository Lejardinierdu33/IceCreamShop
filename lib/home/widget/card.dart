import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class CardSection extends StatefulWidget {
  CardSection({Key? key}) : super(key: key);

  @override
  _CardSectionState createState() => _CardSectionState();
}

class _CardSectionState extends State<CardSection> {
  bool isFavorite = false;
  bool isShop = false;

  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  void toggleShop() {
    setState(() {
      isShop = !isShop;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [


        //first card
        SizedBox(
          height: 300,
          width: 300,
          child: FlipCard(
            fill: Fill.fillBack,
            direction: FlipDirection.HORIZONTAL,
            side: CardSide.FRONT,
            front: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/images/ice_cream_nobg11.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            back: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromARGB(176, 237, 145, 116),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'FLAVOR: vanilla, peach, violet coulis, m&m\'s topping',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Price: 8.5 €',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          onPressed: toggleShop,
                          icon: Column(
                            children: [
                              Icon(
                                isShop
                                    ? Icons.shopping_bag
                                    : Icons.shopping_bag_outlined,
                                color: isShop ? Color.fromRGBO(218, 165, 32, 1): Colors.white,
                              ),
                              const Text(
                                "Buy",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          label: const SizedBox.shrink(),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                          ),
                        ),
                        const SizedBox(width: 15),
                        ElevatedButton.icon(
                          onPressed: toggleFavorite,
                          icon: Column(
                            children: [
                              Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                                color: isFavorite ? Colors.pink : Colors.white,
                              ),
                              const Text(
                                "Favorite",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          label: const SizedBox.shrink(),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                          ),
                        ),
                      ],
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



        // second card
        SizedBox(
          height: 300,
          width: 300,
          child: FlipCard(
            fill: Fill.fillBack,
            direction: FlipDirection.HORIZONTAL,
            side: CardSide.FRONT,
            front: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/images/ice_cream_nobg5.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            back: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromARGB(176, 75, 159, 228),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'FLAVOR: vanilla, strawberry, caramel coulis, crunchy topping',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Price: 9.5 €',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          onPressed: toggleShop,
                          icon: Column(
                            children: [
                              Icon(
                                isShop
                                    ? Icons.shopping_bag
                                    : Icons.shopping_bag_outlined,
                                color: isShop ? Color.fromRGBO(218, 165, 32, 1) : Colors.white,
                              ),
                              const Text(
                                "Buy",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          label: const SizedBox.shrink(),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                          ),
                        ),
                        const SizedBox(width: 15),
                        ElevatedButton.icon(
                          onPressed: toggleFavorite,
                          icon: Column(
                            children: [
                              Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                                color: isFavorite ? Colors.pink : Colors.white,
                              ),
                              const Text(
                                "Favorite",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          label: const SizedBox.shrink(),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                          ),
                        ),
                      ],
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


        //third card
        SizedBox(
          height: 300,
          width: 300,
          child: FlipCard(
            fill: Fill.fillBack,
            direction: FlipDirection.HORIZONTAL,
            side: CardSide.FRONT,
            front: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/images/ice_cream_nobg1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            back: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromARGB(176, 237, 145, 116),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'FLAVOR: vanilla, peach, violet coulis, m&m\'s topping',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Price: 8.5 €',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          onPressed: toggleShop,
                          icon: Column(
                            children: [
                              Icon(
                                isShop
                                    ? Icons.shopping_bag
                                    : Icons.shopping_bag_outlined,
                                color: isShop ? Color.fromRGBO(218, 165, 32, 1) : Colors.white,
                              ),
                              const Text(
                                "Buy",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          label: const SizedBox.shrink(),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                          ),
                        ),
                        const SizedBox(width: 15),
                        ElevatedButton.icon(
                          onPressed: toggleFavorite,
                          icon: Column(
                            children: [
                              Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                                color: isFavorite ? Colors.pink : Colors.white,
                              ),
                              const Text(
                                "Favorite",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          label: const SizedBox.shrink(),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                          ),
                        ),
                      ],
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



        //fourth card
        SizedBox(
          height: 300,
          width: 300,
          child: FlipCard(
            fill: Fill.fillBack,
            direction: FlipDirection.HORIZONTAL,
            side: CardSide.FRONT,
            front: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/images/ice_cream_nobg2.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            back: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromARGB(176, 75, 159, 228),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'FLAVOR: vanilla, peach, violet coulis, m&m\'s topping',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Price: 8.5 €',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          onPressed: toggleShop,
                          icon: Column(
                            children: [
                              Icon(
                                isShop
                                    ? Icons.shopping_bag
                                    : Icons.shopping_bag_outlined,
                                color: isShop ? Color.fromRGBO(218, 165, 32, 1) : Colors.white,
                              ),
                              const Text(
                                "Buy",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          label: const SizedBox.shrink(),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                          ),
                        ),
                        const SizedBox(width: 15),
                        ElevatedButton.icon(
                          onPressed: toggleFavorite,
                          icon: Column(
                            children: [
                              Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                                color: isFavorite ? Colors.pink : Colors.white,
                              ),
                              const Text(
                                "Favorite",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          label: const SizedBox.shrink(),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                          ),
                        ),
                      ],
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
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(home: CardSection()));
}
