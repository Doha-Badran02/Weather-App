import 'package:flutter/material.dart';
class NoWaetherBody extends StatelessWidget {
  const NoWaetherBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'There Is No Weather 😔 Start',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          SizedBox(height: 10,),
          Text(
            'Searching Now 🔎',
            style: TextStyle(
              fontSize: 20,
            ),
          ),

        ],
      ),
    );
  }
}