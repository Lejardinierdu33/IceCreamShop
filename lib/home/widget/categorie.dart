import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
   CategoriesSection({super.key});

  final categories = [
    {
      'icon': Icons.favorite_border_outlined,
      'color': Color.fromARGB(176, 75, 159, 228),
      'title': 'Favorite',
    },
    {
      'icon': Icons.local_cafe_outlined,
      'color': Color.fromRGBO(255, 103, 254, 0.5),
      'title': 'Topping',
    },
    {
      'icon': Icons.star_border_outlined,
      'color': Color.fromARGB(176, 75, 159, 228),
      'title': 'Best Seller',
    },
    {
      'icon': Icons.more_horiz_outlined,
      'color': Color.fromRGBO(255, 103, 254, 0.5),
      'title': 'XXL',
    },
    {
      'icon': Icons.price_change,
      'color': Color.fromARGB(176, 75, 159, 228),
      'title': 'Nouveautés',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: Column(
        children: [
          const SizedBox(height: 40,),
          SizedBox(
            height: 150,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) => Column(
                children: [
                 Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: categories[index]['color'] as Color
                  ),
                  child: Icon(
                    categories[index]['icon'] as IconData,
                    color: Colors.white,
                    size: 40,
                  ),),
                  const SizedBox(height: 10,),
                  Text(
                    categories[index]['title'] as String,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),)
                ],
              )),
              separatorBuilder: ((context, index) => const SizedBox(width:40)), 
              itemCount: categories.length,),
            ),
      ]),
    );
  }
}