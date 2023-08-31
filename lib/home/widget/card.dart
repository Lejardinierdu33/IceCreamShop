import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class CardSection extends StatefulWidget {
  CardSection({Key? key}) : super(key: key);

  @override
  _CardSectionState createState() => _CardSectionState();
}

class _CardSectionState extends State<CardSection> {

  // boolean like and shop
  List<bool> isFavoriteList = [false, false, false, false];
  List<bool> isShopList = [false, false, false, false];

  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();


// toggle favorite
  void toggleFavorite(int index) {
    setState(() {
      isFavoriteList[index] = !isFavoriteList[index];
    });
  }


// toggle shop
  void toggleShop(int index) {
    setState(() {
      isShopList[index] = !isShopList[index];
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
                          onPressed: () => toggleShop(0),
                          icon: Column(
                            children: [
                              Icon(
                                isShopList[0]
                                    ? Icons.shopping_bag
                                    : Icons.shopping_bag_outlined,
                                color: isShopList[0] ? Color.fromRGBO(218, 165, 32, 1): Colors.white,
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
                          onPressed: () => toggleFavorite(0),
                          icon: Column(
                            children: [
                              Icon(
                                isFavoriteList[0]
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                                color: isFavoriteList[0] ? Colors.pink : Colors.white,
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
                          onPressed: () => toggleShop(1),
                          icon: Column(
                            children: [
                              Icon(
                                isShopList[1]
                                    ? Icons.shopping_bag
                                    : Icons.shopping_bag_outlined,
                                color: isShopList[1] ? Color.fromRGBO(218, 165, 32, 1) : Colors.white,
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
                          onPressed: () => toggleFavorite(1),
                          icon: Column(
                            children: [
                              Icon(
                                isFavoriteList[1]
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                                color: isFavoriteList[1] ? Colors.pink : Colors.white,
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
                          onPressed: () => toggleShop(2),
                          icon: Column(
                            children: [
                              Icon(
                                isShopList[2]
                                    ? Icons.shopping_bag
                                    : Icons.shopping_bag_outlined,
                                color: isShopList[2] ? Color.fromRGBO(218, 165, 32, 1) : Colors.white,
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
                          onPressed: () => toggleFavorite(2),
                          icon: Column(
                            children: [
                              Icon(
                                isFavoriteList[2]
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                                color: isFavoriteList[2] ? Colors.pink : Colors.white,
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
                          onPressed: () => toggleShop(3),
                          icon: Column(
                            children: [
                              Icon(
                                isShopList[3]
                                    ? Icons.shopping_bag
                                    : Icons.shopping_bag_outlined,
                                color: isShopList[3] ? Color.fromRGBO(218, 165, 32, 1) : Colors.white,
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
                          onPressed: () => toggleFavorite(3),
                          icon: Column(
                            children: [
                              Icon(
                                isFavoriteList[3]
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                                color: isFavoriteList[3] ? Colors.pink : Colors.white,
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
