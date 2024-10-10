import 'package:flutter/material.dart';
import 'package:ikea_spare/Widgets/FilterButtonChoice.dart';

class FilterButton extends StatelessWidget {
  final Filter selectedFilter; // Accept the current filter
  final Function(Filter) onFilterChanged; // Accept the callback to change the filter

  const FilterButton({super.key, required this.selectedFilter, required this.onFilterChanged});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Use Flexible to avoid infinite height issue
            Flexible(
              child: FilterButtonChoice(
                selectedFilter: selectedFilter,  // <-- Provide the selected filter
                onFilterChanged: onFilterChanged,  // <-- Provide the callback
              ),
            ),
            const SizedBox(
              width: 100,
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}