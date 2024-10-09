import 'package:flutter/material.dart';
import 'package:ikea_spare/Widgets/ScannedPart.dart';
import 'package:ikea_spare/Widgets/SparePartList.dart';
import 'package:ikea_spare/Widgets/CustomSearchBar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _searchText = '';

  void _onSearchChanged(String searchText) {
    setState(() {
      _searchText = searchText;
    });
  }

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
              width: 600,
              height: 50,
              child: CustomSearchBar(onSearch: _onSearchChanged),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 16.0, right: 16.0), // Adjust padding as needed
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 600,
                    height: 565,
                    child: SparePartList().getListWidget(),
                  ),
                ],
              ),
            )
            ]
            ),
            SizedBox(
              width: 600,
              height: 565,
              child:ScannedPart(name: "test", image: 'https://media.tenor.com/wsbmWYxnJYQAAAAM/kermit-falling.gif', quantity: 1)
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
