import 'package:flutter/material.dart';
import 'package:ikea_spare/Backend/SparePart.dart';
import 'package:ikea_spare/Widgets/ScannedPart.dart';
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
        child: Row(
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: width * 0.5,
                          maxHeight: 40,
                        ),
                        child: const SparePartListHeader(),
                      ),
                    ),
                  ],
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
                          maxHeight: height * 0.1,
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
                          maxWidth: width * 0.5,
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
              )
            ]),
            SizedBox(
                width: 600,
                height: 565,
                child: ScannedPart(
                  ValueNotifier<int>(0),
                    // part: SparePart(
                    //     "H191825",
                    //     "Cap White",
                    //     "Ersätter: #759530 C00336008 481946248175 STOPPER. Denna artikel är kompatibel / passar för modellen: 00015068 / IKEA",
                    //     "https://cdn.fixpart.net/90861849/ea5b7744ba89682e54e5e21b9a799f61.jpg",
                    //      ValueNotifier<int>(16),
                    //      "1,9,8",
                    //      )
                         )),
          ],
        ),
      ),
    );
  }
}
