import 'package:flutter/material.dart';

class CoffeeDetailScreen extends StatelessWidget {
  const CoffeeDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Text('Location'),
            Row(
             children: [
               Text('Bilzen,Tanjungabalai'),
               IconButton(onPressed: (){}, icon: Icon(Icons.arrow_downward))
             ],

            )
          ],
        ),
      ),
    );
  }
}
