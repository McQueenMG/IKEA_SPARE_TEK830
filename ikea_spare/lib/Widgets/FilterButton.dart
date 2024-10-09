import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key}); // Added missing semicolon

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              //Text('Filter'),
              SingleChoice(),
              SizedBox(
                width: 100,
                height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

enum Filter { All, Part, Product }

class SingleChoice extends StatefulWidget {
  const SingleChoice({super.key});

  @override
  State<SingleChoice> createState() => _SingleChoiceState();
}

class _SingleChoiceState extends State<SingleChoice> {
  Filter filterView = Filter.All;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Filter>(
      segments: const <ButtonSegment<Filter>>[
        ButtonSegment<Filter>(
          value: Filter.All,
          label: Text('All'),
        ), 
        ButtonSegment<Filter>(
          value: Filter.Part,
          label: Text('Spare Part'),
        ), 
        ButtonSegment<Filter>(
          value: Filter.Product,
          label: Text('Product'),
        ),
      ],
      selected: <Filter>{filterView}, 
      onSelectionChanged: (Set<Filter> newSelection) {
        setState(() {
          filterView = newSelection.first;
        });
      },
    );
  }
}