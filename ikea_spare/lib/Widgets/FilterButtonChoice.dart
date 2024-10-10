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
    // Add a SizedBox or ConstrainedBox if necessary
    return SizedBox(
      width: double.infinity, // Ensure the button doesn't overflow
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
      ),
    );
  }
}