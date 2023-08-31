import 'package:flutter/material.dart';
import 'package:ice_cream_shop/detail/details.dart';
import 'package:ice_cream_shop/models/ice_cream.dart';

class CreamSelection extends StatelessWidget {
  CreamSelection({super.key});

  final List<IceCream> cesareans = IceCream.cesareans();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: cesareans.asMap().entries.map((entry) {
        final IceCream cesarean = entry.value;
        return GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailIceCream(cesarean))),
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsetsDirectional.only(
              bottom: 20,
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    cesarean.bgImage,
                    width: 100,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        cesarean.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            for (int i = 0; i < 5; i++)
                              const Icon(
                                Icons.favorite,
                                size: 15,
                                color: Color.fromRGBO(218, 165, 32, 1),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
