import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_list_view/homescreen.dart';
import 'package:provider_list_view/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderListView>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Provider using listView'),
          ),
          body: Column(
            children: [
              Text(
                value.list.last.toString(),
                style: const TextStyle(fontSize: 30),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.list.length,
                  itemBuilder: (context, index) {
                    return Text(
                      value.list[index].toString(),
                      style: const TextStyle(fontSize: 30),
                    );
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                  child: const Text('To HomeScreen'))
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
      },
    );
  }
}
