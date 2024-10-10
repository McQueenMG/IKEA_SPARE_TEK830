import 'package:flutter/material.dart';
import 'package:ikea_spare/Widgets/FilterButtonChoice.dart';

class FilterButton extends StatelessWidget {
  final Filter selectedFilter; 
  final Function(Filter) onFilterChanged; // Accept the callback to change the filter

  const FilterButton({super.key, required this.selectedFilter, required this.onFilterChanged});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: FilterButtonChoice(
                selectedFilter: selectedFilter,  
                onFilterChanged: onFilterChanged, 
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