import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_list_view/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderListView>(builder: (context, value, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('HomeScreen'),
        ),
        body: Column(
          children: [
            Text(
              value.list.last.toString(),
              style: const TextStyle(fontSize: 30),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text(value.list[index].toString(),
                      style: const TextStyle(fontSize: 30));
                },
                itemCount: value.list.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
             value.addItem();
            });
          },
          child: const Icon(Icons.add),
        ),
      );
    });
  }
}
