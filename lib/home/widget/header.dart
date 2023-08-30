import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only (
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      height: 200,
      child: Row(children: [
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 200),
              child: const Text(
                'The ice cream shop of the future',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                ),
            )
          ],
        ),
      ]),
    );
  }
}