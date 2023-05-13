import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String searchValue = '';
  final List<String> _suggestions = ['Exoplanets', 'Activities'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabs',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: EasySearchBar(
            title: const Text('Tabs'),
            onSearch: (value) => setState(() => searchValue = value),
            suggestions: _suggestions),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Exoplanets'),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: const Text('Activities'),
                onTap: () => Navigator.pop(context),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Exoplanets',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer),
              label: 'Activities',
            ),
          ],
        ),
      ),
    );
  }
}
