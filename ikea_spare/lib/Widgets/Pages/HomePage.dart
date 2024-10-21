import 'package:flutter/material.dart';
import 'package:ikea_spare/Widgets/ScannedPart.dart';
import 'package:ikea_spare/Widgets/SparePartList.dart';
import 'package:ikea_spare/Widgets/SparePartListHeader.dart';
import 'package:ikea_spare/Widgets/CustomSearchBar.dart';
import 'package:ikea_spare/Widgets/FilterButton.dart';
import 'package:ikea_spare/Widgets/FilterButtonChoice.dart';
import 'package:ikea_spare/Widgets/BarcodeScanner.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _searchText = '';
  Filter selectedFilter = Filter.All; 
  String  barcodeResult = '';

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

  Future<void> _scanBarcode() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BarcodeScanner(),
      ),
    );
    if (result != null && result is String) {
      setState(() {
        barcodeResult = result;
        //_searchText = barcodeResult;
      });
    } else {
      setState(() {
        barcodeResult = 'No barcode scanned';
      });
    }
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
              Row(
                children: [ 
                  SizedBox(
                    width: width * 0.4,
                    height: 50,
                    child: CustomSearchBar(onSearch: _onSearchChanged),
                  ),
                  ElevatedButton(
                    onPressed: _scanBarcode,
                    child: Text('Scan'),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.black, 
                        width: 0.5,      
                      ),
                    ),      
                  ),
                ],
              ),
              SizedBox(
                width: width * 0.4,
                height: 100,
                child: FilterButton(
                  selectedFilter: selectedFilter,
                  onFilterChanged: _onFilterChanged,
                ),
              ),
              Text(
                'Scanned Barcode: $barcodeResult',
                style: TextStyle(fontSize: 16),
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
              ),
            ]),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: width * 0.4,
                        maxHeight: height * 0.81,
                      ),
                      child: const ScannedPart(id: 'H982579'),
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
