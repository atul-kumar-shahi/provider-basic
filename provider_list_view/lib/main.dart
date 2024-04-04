import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_list_view/home.dart';
import 'package:provider_list_view/provider.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>ProviderListView()),
      ],
      child: const MaterialApp(
        home: Home(),
      ),
    );
  }
}
