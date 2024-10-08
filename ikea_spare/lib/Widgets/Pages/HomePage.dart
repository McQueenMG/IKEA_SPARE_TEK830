import 'package:flutter/material.dart';
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

  double width = 0;
  double height = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 600,
              height: 50,
              child: CustomSearchBar(onSearch: _onSearchChanged),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: width * 0.8,
                        maxHeight: height * 0.8,
                      ),
                      child: Flexible(
                        flex: 1,
                        child: SparePartList().getListWidget(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
