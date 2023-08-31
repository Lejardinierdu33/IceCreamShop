import 'package:flutter/material.dart';
import 'package:ice_cream_shop/contact/contact_page.dart';
import 'package:ice_cream_shop/home/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ice_cream_shop/ice_cream_page/ice_cream_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // index navigation
  int _currentIndex = 0;

  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme font
      theme: ThemeData(
        textTheme: GoogleFonts.orbitronTextTheme(),
      ),

      //navigation
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          // logo
          title: Image.asset(
            'assets/images/ice_cream_logo.png',
            fit: BoxFit.cover,
            height: 50,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),

        // declaration nav
        body: [
          const HomePage(),
          const IceCreamPage(),
          const ContactPage(),
        ][_currentIndex],

        // bottom navigation
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.pink.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 10,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),

              // navigation principale
              child: BottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: (index) => setCurrentIndex(index),
                selectedItemColor: Colors.pink,
                selectedFontSize: 15,
                unselectedFontSize: 15,
                unselectedItemColor: Color.fromARGB(176, 75, 159, 228),
                type: BottomNavigationBarType.fixed,
                items: [
                  //home navigation
                  BottomNavigationBarItem(
                    label: 'Home',
                    icon: Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
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

                  // ice cream navigation
                  BottomNavigationBarItem(
                    label: 'Ice Cream',
                    icon: Container(
                        margin: const EdgeInsets.all(10),
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

                  // location navigation
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

                  // contact navigation
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
        ),
      ),
    );
  }
}
