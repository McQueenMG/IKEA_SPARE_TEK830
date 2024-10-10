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
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: width * 0.75,
                        maxHeight: height * 0.035,
                      ),
                      child: SparePartList().getListHeader(),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: width * 0.75,
                        maxHeight: height,
                      ),
                      child: SparePartList().getListWidget(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
