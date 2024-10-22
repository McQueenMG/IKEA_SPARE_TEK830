import 'package:flutter/material.dart';

enum Filter { All, Part, Product }

class FilterButtonChoice extends StatefulWidget {
  final Filter selectedFilter; // Accept the currently selected filter
  final Function(Filter) onFilterChanged; // Callback to notify when filter changes

  const FilterButtonChoice({super.key, required this.selectedFilter, required this.onFilterChanged});

  @override
  State<FilterButtonChoice> createState() => _FilterButtonChoiceState();
}

class _FilterButtonChoiceState extends State<FilterButtonChoice> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, 
      child: SegmentedButton<Filter>(
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
        selected: <Filter>{widget.selectedFilter}, // Use the passed selected filter
        onSelectionChanged: (Set<Filter> newSelection) {
          widget.onFilterChanged(newSelection.first); // Notify parent of the new selection
        },
         style: SegmentedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          selectedBackgroundColor: const Color.fromARGB(255, 133, 175, 210),
          selectedForegroundColor: Colors.black,
        ),
      ),
    );
  }
}