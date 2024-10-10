import 'package:flutter/material.dart';
import 'package:ikea_spare/Widgets/SparePartList.dart';
import 'package:ikea_spare/Widgets/CustomSearchBar.dart';
import 'package:ikea_spare/Widgets/FilterButton.dart';
import 'package:ikea_spare/Widgets/FilterButtonChoice.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _searchText = '';
  Filter selectedFilter = Filter.All; // Default filter set to "All"

  void _onSearchChanged(String searchText) {
    setState(() {
      _searchText = searchText;
    });
  }

  void _onFilterChanged(Filter newFilter) {
    setState(() {
      selectedFilter = newFilter;
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
            SizedBox(
              width: 400, 
              height: 100, 
              child: FilterButton(
                selectedFilter: selectedFilter, 
                onFilterChanged: _onFilterChanged, 
                ),
              ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: width * 0.5,
                        maxHeight: height,
                      ),
                      child: SparePartList(filter: selectedFilter),
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

