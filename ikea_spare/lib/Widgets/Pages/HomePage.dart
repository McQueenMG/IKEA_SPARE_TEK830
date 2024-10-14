import 'package:flutter/material.dart';
import 'package:ikea_spare/Widgets/SparePartList.dart';
import 'package:ikea_spare/Widgets/SparePartListHeader.dart';
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

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

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
            HomePageSparePartListHeader(width: width * 0.5, height: 40),
            HomePageSparePartListDivider(
                width: width * 0.5, height: height * 0.1),
            HomePageSparePartList(
                width: width * 0.5,
                height: height,
                selectedFilter: selectedFilter,
                searchText: _searchText),
          ],
        ),
      ),
    );
  }
}

class HomePageSparePartList extends StatelessWidget {
  const HomePageSparePartList({
    super.key,
    required this.width,
    required this.height,
    required this.selectedFilter,
    required String searchText,
  }) : _searchText = searchText;

  final double width;
  final double height;
  final Filter selectedFilter;
  final String _searchText;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: width,
                maxHeight: height,
              ),
              child: SparePartList(
                filter: selectedFilter,
                searchText: _searchText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePageSparePartListDivider extends StatelessWidget {
  const HomePageSparePartListDivider({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: width,
                maxHeight: height,
              ),
              child: const Divider(
                thickness: 0.1,
                color: Colors.black,
                height: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePageSparePartListHeader extends StatelessWidget {
  const HomePageSparePartListHeader({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: width,
                maxHeight: height,
              ),
              child: const SparePartListHeader(),
            ),
          ),
        ],
      ),
    );
  }
}
