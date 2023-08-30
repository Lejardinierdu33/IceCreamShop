import 'package:flutter/material.dart';
import 'package:ice_cream_shop/home/widget/card.dart';
import 'package:ice_cream_shop/home/widget/categorie.dart';
import 'package:ice_cream_shop/home/widget/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Transform(
            transform: Matrix4.identity()..rotateZ(50),
            origin: Offset(150, -250),
            child: Image.asset(
              'assets/images/pink_liquid2.png',
              width: 550,
            ),
          ),
          Column(
            children: [
              const HeaderSection(),
              CategoriesSection(),
               CardSection(),
            ],
          )
        ],
      )),
      bottomNavigationBar: NavigationBar(),
    );
  }
}

Widget NavigationBar() {
  return Container(
    color: Colors.black,
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.pink.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 10,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.pink,
          selectedFontSize: 15,
          unselectedFontSize: 15,
          unselectedItemColor: Color.fromARGB(176, 75, 159, 228),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 10,
                      ),
                    ],
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    Icons.home_outlined,
                    size: 30,
                  )),
            ),
            BottomNavigationBarItem(
              label: 'Ice Cream',
              icon: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 10,
                      ),
                    ],
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    Icons.icecream_outlined,
                    size: 30,
                  )),
            ),
            BottomNavigationBarItem(
              label: 'Location',
              icon: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 10,
                      ),
                    ],
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    Icons.location_on_outlined,
                    size: 30,
                  )),
            ),
            BottomNavigationBarItem(
              label: 'Contact',
              icon: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 10,
                      ),
                    ],
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    Icons.message_outlined,
                    size: 30,
                  )),
            ),
          ],
        ),
      ),
    ),
  );
}
