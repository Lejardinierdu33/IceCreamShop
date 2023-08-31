import 'package:flutter/material.dart';
import 'package:ice_cream_shop/models/ice_cream.dart';

class DetailIceCream extends StatelessWidget {
  const DetailIceCream(this.cesarean, {Key? key}) : super(key: key);

  final IceCream cesarean;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200, // Ajustez la hauteur en conséquence
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                cesarean.bgImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cesarean.name,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      // Ajoutez d'autres informations ici
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

